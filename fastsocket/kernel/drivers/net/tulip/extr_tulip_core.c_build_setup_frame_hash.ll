; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_tulip_core.c_build_setup_frame_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tulip/extr_tulip_core.c_build_setup_frame_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.tulip_private = type { i8** }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8**, %struct.net_device*)* @build_setup_frame_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_setup_frame_hash(i8** %0, %struct.net_device* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tulip_private*, align 8
  %6 = alloca [32 x i8*], align 16
  %7 = alloca %struct.dev_mc_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.tulip_private* @netdev_priv(%struct.net_device* %11)
  store %struct.tulip_private* %12, %struct.tulip_private** %5, align 8
  %13 = getelementptr inbounds [32 x i8*], [32 x i8*]* %6, i64 0, i64 0
  %14 = call i32 @memset(i8** %13, i32 0, i32 256)
  %15 = getelementptr inbounds [32 x i8*], [32 x i8*]* %6, i64 0, i64 0
  %16 = call i32 @set_bit_le(i32 255, i8** %15)
  store i32 0, i32* %8, align 4
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 2
  %19 = load %struct.dev_mc_list*, %struct.dev_mc_list** %18, align 8
  store %struct.dev_mc_list* %19, %struct.dev_mc_list** %7, align 8
  br label %20

20:                                               ; preds = %41, %2
  %21 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %22 = icmp ne %struct.dev_mc_list* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br label %29

29:                                               ; preds = %23, %20
  %30 = phi i1 [ false, %20 ], [ %28, %23 ]
  br i1 %30, label %31, label %47

31:                                               ; preds = %29
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %34 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ether_crc_le(i32 %32, i32 %35)
  %37 = and i32 %36, 511
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds [32 x i8*], [32 x i8*]* %6, i64 0, i64 0
  %40 = call i32 @set_bit_le(i32 %38, i8** %39)
  br label %41

41:                                               ; preds = %31
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load %struct.dev_mc_list*, %struct.dev_mc_list** %7, align 8
  %45 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %44, i32 0, i32 1
  %46 = load %struct.dev_mc_list*, %struct.dev_mc_list** %45, align 8
  store %struct.dev_mc_list* %46, %struct.dev_mc_list** %7, align 8
  br label %20

47:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %64, %47
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 32
  br i1 %50, label %51, label %67

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [32 x i8*], [32 x i8*]* %6, i64 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load i8**, i8*** %3, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i32 1
  store i8** %57, i8*** %3, align 8
  store i8* %55, i8** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [32 x i8*], [32 x i8*]* %6, i64 0, i64 %59
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %3, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i32 1
  store i8** %63, i8*** %3, align 8
  store i8* %61, i8** %62, align 8
  br label %64

64:                                               ; preds = %51
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %48

67:                                               ; preds = %48
  %68 = load %struct.tulip_private*, %struct.tulip_private** %5, align 8
  %69 = getelementptr inbounds %struct.tulip_private, %struct.tulip_private* %68, i32 0, i32 0
  %70 = load i8**, i8*** %69, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 78
  store i8** %71, i8*** %3, align 8
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i8**
  store i8** %75, i8*** %9, align 8
  %76 = load i8**, i8*** %9, align 8
  %77 = getelementptr inbounds i8*, i8** %76, i64 0
  %78 = load i8*, i8** %77, align 8
  %79 = load i8**, i8*** %3, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %3, align 8
  store i8* %78, i8** %79, align 8
  %81 = load i8**, i8*** %9, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %3, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %3, align 8
  store i8* %83, i8** %84, align 8
  %86 = load i8**, i8*** %9, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i8**, i8*** %3, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i32 1
  store i8** %90, i8*** %3, align 8
  store i8* %88, i8** %89, align 8
  %91 = load i8**, i8*** %9, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 1
  %93 = load i8*, i8** %92, align 8
  %94 = load i8**, i8*** %3, align 8
  %95 = getelementptr inbounds i8*, i8** %94, i32 1
  store i8** %95, i8*** %3, align 8
  store i8* %93, i8** %94, align 8
  %96 = load i8**, i8*** %9, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 2
  %98 = load i8*, i8** %97, align 8
  %99 = load i8**, i8*** %3, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i32 1
  store i8** %100, i8*** %3, align 8
  store i8* %98, i8** %99, align 8
  %101 = load i8**, i8*** %9, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i8**, i8*** %3, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i32 1
  store i8** %105, i8*** %3, align 8
  store i8* %103, i8** %104, align 8
  ret void
}

declare dso_local %struct.tulip_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @set_bit_le(i32, i8**) #1

declare dso_local i32 @ether_crc_le(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
