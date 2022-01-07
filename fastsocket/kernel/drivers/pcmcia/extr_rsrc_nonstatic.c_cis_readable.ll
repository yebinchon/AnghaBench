; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_cis_readable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_cis_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cs memory probe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i64, i64)* @cis_readable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cis_readable(%struct.pcmcia_socket* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = udiv i64 %14, 2
  %16 = load i32, i32* @IORESOURCE_MEM, align 4
  %17 = call %struct.resource* @claim_region(%struct.pcmcia_socket* %12, i64 %13, i64 %15, i32 %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %17, %struct.resource** %7, align 8
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = udiv i64 %20, 2
  %22 = add i64 %19, %21
  %23 = load i64, i64* %6, align 8
  %24 = udiv i64 %23, 2
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @claim_region(%struct.pcmcia_socket* %18, i64 %22, i64 %24, i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %26, %struct.resource** %8, align 8
  %27 = load %struct.resource*, %struct.resource** %7, align 8
  %28 = icmp ne %struct.resource* %27, null
  br i1 %28, label %29, label %41

29:                                               ; preds = %3
  %30 = load %struct.resource*, %struct.resource** %8, align 8
  %31 = icmp ne %struct.resource* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = call i32 @readable(%struct.pcmcia_socket* %33, %struct.resource* %34, i32* %9)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %37 = load %struct.resource*, %struct.resource** %8, align 8
  %38 = call i32 @readable(%struct.pcmcia_socket* %36, %struct.resource* %37, i32* %10)
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %32, %29, %3
  %42 = load %struct.resource*, %struct.resource** %8, align 8
  %43 = call i32 @free_region(%struct.resource* %42)
  %44 = load %struct.resource*, %struct.resource** %7, align 8
  %45 = call i32 @free_region(%struct.resource* %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 2
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %49, %50
  br label %52

52:                                               ; preds = %48, %41
  %53 = phi i1 [ false, %41 ], [ %51, %48 ]
  %54 = zext i1 %53 to i32
  ret i32 %54
}

declare dso_local %struct.resource* @claim_region(%struct.pcmcia_socket*, i64, i64, i32, i8*) #1

declare dso_local i32 @readable(%struct.pcmcia_socket*, %struct.resource*, i32*) #1

declare dso_local i32 @free_region(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
