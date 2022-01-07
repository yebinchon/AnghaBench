; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_checksum_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_rsrc_nonstatic.c_checksum_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cs memory probe\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i64, i64)* @checksum_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checksum_match(%struct.pcmcia_socket* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = udiv i64 %13, 2
  %15 = load i32, i32* @IORESOURCE_MEM, align 4
  %16 = call %struct.resource* @claim_region(%struct.pcmcia_socket* %11, i64 %12, i64 %14, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %16, %struct.resource** %7, align 8
  %17 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = udiv i64 %19, 2
  %21 = add i64 %18, %20
  %22 = load i64, i64* %6, align 8
  %23 = udiv i64 %22, 2
  %24 = load i32, i32* @IORESOURCE_MEM, align 4
  %25 = call %struct.resource* @claim_region(%struct.pcmcia_socket* %17, i64 %21, i64 %23, i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.resource* %25, %struct.resource** %8, align 8
  %26 = load %struct.resource*, %struct.resource** %7, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %3
  %29 = load %struct.resource*, %struct.resource** %8, align 8
  %30 = icmp ne %struct.resource* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %33 = load %struct.resource*, %struct.resource** %7, align 8
  %34 = call i32 @checksum(%struct.pcmcia_socket* %32, %struct.resource* %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %36 = load %struct.resource*, %struct.resource** %8, align 8
  %37 = call i32 @checksum(%struct.pcmcia_socket* %35, %struct.resource* %36)
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %31, %28, %3
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = call i32 @free_region(%struct.resource* %39)
  %41 = load %struct.resource*, %struct.resource** %7, align 8
  %42 = call i32 @free_region(%struct.resource* %41)
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %47, 0
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi i1 [ false, %38 ], [ %48, %46 ]
  %51 = zext i1 %50 to i32
  ret i32 %51
}

declare dso_local %struct.resource* @claim_region(%struct.pcmcia_socket*, i64, i64, i32, i8*) #1

declare dso_local i32 @checksum(%struct.pcmcia_socket*, %struct.resource*) #1

declare dso_local i32 @free_region(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
