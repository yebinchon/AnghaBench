; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_tulip_core.c_build_setup_frame_perfect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_tulip_core.c_build_setup_frame_perfect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i64, %struct.dev_mc_list* }
%struct.tulip_private = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.net_device*)* @build_setup_frame_perfect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_setup_frame_perfect(i8** %0, %struct.net_device* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tulip_private*, align 8
  %6 = alloca %struct.dev_mc_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i8** %0, i8*** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %9)
  store %struct.tulip_private* %10, %struct.tulip_private** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 2
  %13 = load %struct.dev_mc_list*, %struct.dev_mc_list** %12, align 8
  store %struct.dev_mc_list* %13, %struct.dev_mc_list** %6, align 8
  br label %14

14:                                               ; preds = %52, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %14
  %21 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %22 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8**
  store i8** %24, i8*** %8, align 8
  %25 = load i8**, i8*** %8, align 8
  %26 = load i8*, i8** %25, align 8
  %27 = load i8**, i8*** %3, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i32 1
  store i8** %28, i8*** %3, align 8
  store i8* %26, i8** %27, align 8
  %29 = load i8**, i8*** %8, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i32 1
  store i8** %30, i8*** %8, align 8
  %31 = load i8*, i8** %29, align 8
  %32 = load i8**, i8*** %3, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i32 1
  store i8** %33, i8*** %3, align 8
  store i8* %31, i8** %32, align 8
  %34 = load i8**, i8*** %8, align 8
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** %3, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i32 1
  store i8** %37, i8*** %3, align 8
  store i8* %35, i8** %36, align 8
  %38 = load i8**, i8*** %8, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i32 1
  store i8** %39, i8*** %8, align 8
  %40 = load i8*, i8** %38, align 8
  %41 = load i8**, i8*** %3, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i32 1
  store i8** %42, i8*** %3, align 8
  store i8* %40, i8** %41, align 8
  %43 = load i8**, i8*** %8, align 8
  %44 = load i8*, i8** %43, align 8
  %45 = load i8**, i8*** %3, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i32 1
  store i8** %46, i8*** %3, align 8
  store i8* %44, i8** %45, align 8
  %47 = load i8**, i8*** %8, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i32 1
  store i8** %48, i8*** %8, align 8
  %49 = load i8*, i8** %47, align 8
  %50 = load i8**, i8*** %3, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %3, align 8
  store i8* %49, i8** %50, align 8
  br label %52

52:                                               ; preds = %20
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %56 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %55, i32 0, i32 1
  %57 = load %struct.dev_mc_list*, %struct.dev_mc_list** %56, align 8
  store %struct.dev_mc_list* %57, %struct.dev_mc_list** %6, align 8
  br label %14

58:                                               ; preds = %14
  %59 = load i8**, i8*** %3, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 15, %60
  %62 = mul nsw i32 %61, 12
  %63 = call i32 @memset(i8** %59, i32 255, i32 %62)
  %64 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %65 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %64, i32 0, i32 0
  %66 = load i8**, i8*** %65, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 90
  store i8** %67, i8*** %3, align 8
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8**
  store i8** %71, i8*** %8, align 8
  %72 = load i8**, i8*** %8, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8**, i8*** %3, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i32 1
  store i8** %76, i8*** %3, align 8
  store i8* %74, i8** %75, align 8
  %77 = load i8**, i8*** %8, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8**, i8*** %3, align 8
  %81 = getelementptr inbounds i8*, i8** %80, i32 1
  store i8** %81, i8*** %3, align 8
  store i8* %79, i8** %80, align 8
  %82 = load i8**, i8*** %8, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %3, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i32 1
  store i8** %86, i8*** %3, align 8
  store i8* %84, i8** %85, align 8
  %87 = load i8**, i8*** %8, align 8
  %88 = getelementptr inbounds i8*, i8** %87, i64 1
  %89 = load i8*, i8** %88, align 8
  %90 = load i8**, i8*** %3, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i32 1
  store i8** %91, i8*** %3, align 8
  store i8* %89, i8** %90, align 8
  %92 = load i8**, i8*** %8, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 2
  %94 = load i8*, i8** %93, align 8
  %95 = load i8**, i8*** %3, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %3, align 8
  store i8* %94, i8** %95, align 8
  %97 = load i8**, i8*** %8, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 2
  %99 = load i8*, i8** %98, align 8
  %100 = load i8**, i8*** %3, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %3, align 8
  store i8* %99, i8** %100, align 8
  ret void
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
