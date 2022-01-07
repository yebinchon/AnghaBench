; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, %struct.ixgbe_q_vector** }
%struct.ixgbe_q_vector = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@IXGBE_MAX_EITR = common dso_local global i32 0, align 4
@IXGBE_20K_ITR = common dso_local global i8* null, align 8
@IXGBE_10K_ITR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @ixgbe_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.ixgbe_adapter*, align 8
  %7 = alloca %struct.ixgbe_q_vector*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbe_adapter* %13, %struct.ixgbe_adapter** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %14, i32 0, i32 3
  %16 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %15, align 8
  %17 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %16, i64 0
  %18 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %17, align 8
  %19 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %2
  %24 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %25 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %24, i32 0, i32 3
  %26 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %25, align 8
  %27 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %26, i64 0
  %28 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %27, align 8
  %29 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %170

41:                                               ; preds = %33, %23, %2
  %42 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IXGBE_MAX_EITR, align 4
  %46 = ashr i32 %45, 2
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %55, label %48

48:                                               ; preds = %41
  %49 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @IXGBE_MAX_EITR, align 4
  %53 = ashr i32 %52, 2
  %54 = icmp sgt i32 %51, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %48, %41
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %170

58:                                               ; preds = %48
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %60 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %61 = call i32 @ixgbe_update_rsc(%struct.ixgbe_adapter* %59, %struct.ethtool_coalesce* %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %63 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %68 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 2
  %71 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %72 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %79

73:                                               ; preds = %58
  %74 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %78 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %81 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i8*, i8** @IXGBE_20K_ITR, align 8
  store i8* %85, i8** %10, align 8
  br label %92

86:                                               ; preds = %79
  %87 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %88 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = inttoptr i64 %90 to i8*
  store i8* %91, i8** %10, align 8
  br label %92

92:                                               ; preds = %86, %84
  %93 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 1
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 2
  %102 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %103 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %110

104:                                              ; preds = %92
  %105 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %106 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %109 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %104, %97
  %111 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %112 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i8*, i8** @IXGBE_10K_ITR, align 8
  store i8* %116, i8** %9, align 8
  br label %123

117:                                              ; preds = %110
  %118 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %119 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  store i8* %122, i8** %9, align 8
  br label %123

123:                                              ; preds = %117, %115
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %160, %123
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %127 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %163

130:                                              ; preds = %124
  %131 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %6, align 8
  %132 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %131, i32 0, i32 3
  %133 = load %struct.ixgbe_q_vector**, %struct.ixgbe_q_vector*** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %133, i64 %135
  %137 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %136, align 8
  store %struct.ixgbe_q_vector* %137, %struct.ixgbe_q_vector** %7, align 8
  %138 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %7, align 8
  %139 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %130
  %144 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %7, align 8
  %145 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %143
  %150 = load i8*, i8** %9, align 8
  %151 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %7, align 8
  %152 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  br label %157

153:                                              ; preds = %143, %130
  %154 = load i8*, i8** %10, align 8
  %155 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %7, align 8
  %156 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %153, %149
  %158 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %7, align 8
  %159 = call i32 @ixgbe_write_eitr(%struct.ixgbe_q_vector* %158)
  br label %160

160:                                              ; preds = %157
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %124

163:                                              ; preds = %124
  %164 = load i32, i32* %11, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.net_device*, %struct.net_device** %4, align 8
  %168 = call i32 @ixgbe_do_reset(%struct.net_device* %167)
  br label %169

169:                                              ; preds = %166, %163
  store i32 0, i32* %3, align 4
  br label %170

170:                                              ; preds = %169, %55, %38
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_update_rsc(%struct.ixgbe_adapter*, %struct.ethtool_coalesce*) #1

declare dso_local i32 @ixgbe_write_eitr(%struct.ixgbe_q_vector*) #1

declare dso_local i32 @ixgbe_do_reset(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
