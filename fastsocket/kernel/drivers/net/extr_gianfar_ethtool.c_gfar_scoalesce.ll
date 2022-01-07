; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_scoalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_gianfar_ethtool.c_gfar_scoalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64, i64, i64, i64 }
%struct.gfar_private = type { i32, i32, i32, i8*, %struct.TYPE_2__*, i8*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@FSL_GIANFAR_DEV_HAS_COALESCE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFAR_MAX_COAL_USECS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Coalescing is limited to %d microseconds\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFAR_MAX_COAL_FRAMES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Coalescing is limited to %d frames\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @gfar_scoalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_scoalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.gfar_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %7)
  store %struct.gfar_private* %8, %struct.gfar_private** %6, align 8
  %9 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %10 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FSL_GIANFAR_DEV_HAS_COALESCE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %163

18:                                               ; preds = %2
  %19 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %18
  %29 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %30 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %29, i32 0, i32 1
  store i32 0, i32* %30, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %33 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %36 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %35, i32 0, i32 6
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* null, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %163

42:                                               ; preds = %34
  %43 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @GFAR_MAX_COAL_USECS, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load i64, i64* @GFAR_MAX_COAL_USECS, align 8
  %50 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %163

53:                                               ; preds = %42
  %54 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @GFAR_MAX_COAL_FRAMES, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %53
  %60 = load i64, i64* @GFAR_MAX_COAL_FRAMES, align 8
  %61 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %163

64:                                               ; preds = %53
  %65 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %69 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %70 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @gfar_usecs2ticks(%struct.gfar_private* %68, i64 %71)
  %73 = call i8* @mk_ic_value(i64 %67, i32 %72)
  %74 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %75 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %74, i32 0, i32 5
  store i8* %73, i8** %75, align 8
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %64
  %81 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80, %64
  %86 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %87 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %86, i32 0, i32 2
  store i32 0, i32* %87, align 8
  br label %91

88:                                               ; preds = %80
  %89 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %90 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %89, i32 0, i32 2
  store i32 1, i32* %90, align 8
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @GFAR_MAX_COAL_USECS, align 8
  %96 = icmp sgt i64 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %91
  %98 = load i64, i64* @GFAR_MAX_COAL_USECS, align 8
  %99 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %163

102:                                              ; preds = %91
  %103 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %104 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @GFAR_MAX_COAL_FRAMES, align 8
  %107 = icmp sgt i64 %105, %106
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load i64, i64* @GFAR_MAX_COAL_FRAMES, align 8
  %110 = call i32 @pr_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i64 %109)
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %163

113:                                              ; preds = %102
  %114 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %115 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %118 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %119 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @gfar_usecs2ticks(%struct.gfar_private* %117, i64 %120)
  %122 = call i8* @mk_ic_value(i64 %116, i32 %121)
  %123 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %124 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %126 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %125, i32 0, i32 4
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = call i32 @gfar_write(i32* %128, i8* null)
  %130 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %131 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %113
  %135 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %136 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %135, i32 0, i32 4
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 1
  %139 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %140 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %139, i32 0, i32 5
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @gfar_write(i32* %138, i8* %141)
  br label %143

143:                                              ; preds = %134, %113
  %144 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %145 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %144, i32 0, i32 4
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = call i32 @gfar_write(i32* %147, i8* null)
  %149 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %150 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %143
  %154 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %155 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load %struct.gfar_private*, %struct.gfar_private** %6, align 8
  %159 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %158, i32 0, i32 3
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @gfar_write(i32* %157, i8* %160)
  br label %162

162:                                              ; preds = %153, %143
  store i32 0, i32* %3, align 4
  br label %163

163:                                              ; preds = %162, %108, %97, %59, %48, %39, %15
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i8* @mk_ic_value(i64, i32) #1

declare dso_local i32 @gfar_usecs2ticks(%struct.gfar_private*, i64) #1

declare dso_local i32 @gfar_write(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
