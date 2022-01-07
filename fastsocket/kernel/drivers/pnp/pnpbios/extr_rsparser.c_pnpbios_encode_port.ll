; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.resource = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"  encode io %#lx-%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, i8*, %struct.resource*)* @pnpbios_encode_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnpbios_encode_port(%struct.pnp_dev* %0, i8* %1, %struct.resource* %2) #0 {
  %4 = alloca %struct.pnp_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.resource* %2, %struct.resource** %6, align 8
  %9 = load %struct.resource*, %struct.resource** %6, align 8
  %10 = call i64 @pnp_resource_enabled(%struct.resource* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %3
  %13 = load %struct.resource*, %struct.resource** %6, align 8
  %14 = getelementptr inbounds %struct.resource, %struct.resource* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load %struct.resource*, %struct.resource** %6, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  %24 = add i64 %23, 1
  store i64 %24, i64* %8, align 8
  br label %26

25:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %25, %12
  %27 = load i64, i64* %7, align 8
  %28 = and i64 %27, 255
  %29 = trunc i64 %28 to i8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  store i8 %29, i8* %31, align 1
  %32 = load i64, i64* %7, align 8
  %33 = lshr i64 %32, 8
  %34 = and i64 %33, 255
  %35 = trunc i64 %34 to i8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8 %35, i8* %37, align 1
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, 255
  %40 = trunc i64 %39 to i8
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 4
  store i8 %40, i8* %42, align 1
  %43 = load i64, i64* %7, align 8
  %44 = lshr i64 %43, 8
  %45 = and i64 %44, 255
  %46 = trunc i64 %45 to i8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 5
  store i8 %46, i8* %48, align 1
  %49 = load i64, i64* %8, align 8
  %50 = and i64 %49, 255
  %51 = trunc i64 %50 to i8
  %52 = load i8*, i8** %5, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 7
  store i8 %51, i8* %53, align 1
  %54 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %57, %58
  %60 = sub i64 %59, 1
  %61 = call i32 @pnp_dbg(i32* %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %60)
  ret void
}

declare dso_local i64 @pnp_resource_enabled(%struct.resource*) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
