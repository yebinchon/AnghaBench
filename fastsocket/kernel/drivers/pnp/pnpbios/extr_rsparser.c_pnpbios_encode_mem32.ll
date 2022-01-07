; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_mem32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pnp/pnpbios/extr_rsparser.c_pnpbios_encode_mem32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.resource = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"  encode mem32 %#lx-%#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnp_dev*, i8*, %struct.resource*)* @pnpbios_encode_mem32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnpbios_encode_mem32(%struct.pnp_dev* %0, i8* %1, %struct.resource* %2) #0 {
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
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  store i8 %29, i8* %31, align 1
  %32 = load i64, i64* %7, align 8
  %33 = lshr i64 %32, 8
  %34 = and i64 %33, 255
  %35 = trunc i64 %34 to i8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 5
  store i8 %35, i8* %37, align 1
  %38 = load i64, i64* %7, align 8
  %39 = lshr i64 %38, 16
  %40 = and i64 %39, 255
  %41 = trunc i64 %40 to i8
  %42 = load i8*, i8** %5, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 6
  store i8 %41, i8* %43, align 1
  %44 = load i64, i64* %7, align 8
  %45 = lshr i64 %44, 24
  %46 = and i64 %45, 255
  %47 = trunc i64 %46 to i8
  %48 = load i8*, i8** %5, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 7
  store i8 %47, i8* %49, align 1
  %50 = load i64, i64* %7, align 8
  %51 = and i64 %50, 255
  %52 = trunc i64 %51 to i8
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 8
  store i8 %52, i8* %54, align 1
  %55 = load i64, i64* %7, align 8
  %56 = lshr i64 %55, 8
  %57 = and i64 %56, 255
  %58 = trunc i64 %57 to i8
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 9
  store i8 %58, i8* %60, align 1
  %61 = load i64, i64* %7, align 8
  %62 = lshr i64 %61, 16
  %63 = and i64 %62, 255
  %64 = trunc i64 %63 to i8
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 10
  store i8 %64, i8* %66, align 1
  %67 = load i64, i64* %7, align 8
  %68 = lshr i64 %67, 24
  %69 = and i64 %68, 255
  %70 = trunc i64 %69 to i8
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 11
  store i8 %70, i8* %72, align 1
  %73 = load i64, i64* %8, align 8
  %74 = and i64 %73, 255
  %75 = trunc i64 %74 to i8
  %76 = load i8*, i8** %5, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 16
  store i8 %75, i8* %77, align 1
  %78 = load i64, i64* %8, align 8
  %79 = lshr i64 %78, 8
  %80 = and i64 %79, 255
  %81 = trunc i64 %80 to i8
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 17
  store i8 %81, i8* %83, align 1
  %84 = load i64, i64* %8, align 8
  %85 = lshr i64 %84, 16
  %86 = and i64 %85, 255
  %87 = trunc i64 %86 to i8
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 18
  store i8 %87, i8* %89, align 1
  %90 = load i64, i64* %8, align 8
  %91 = lshr i64 %90, 24
  %92 = and i64 %91, 255
  %93 = trunc i64 %92 to i8
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 19
  store i8 %93, i8* %95, align 1
  %96 = load %struct.pnp_dev*, %struct.pnp_dev** %4, align 8
  %97 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %96, i32 0, i32 0
  %98 = load i64, i64* %7, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %99, %100
  %102 = sub i64 %101, 1
  %103 = call i32 @pnp_dbg(i32* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %98, i64 %102)
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
