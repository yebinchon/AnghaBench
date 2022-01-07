; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_smartspeed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_mac_link_smartspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (%struct.ixgbe_hw.0*, i32*, i32*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@IXGBE_SMARTSPEED_MAX_RETRIES = common dso_local global i64 0, align 8
@IXGBE_AUTOC_KR_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_KX_SUPP_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"Smartspeed has downgraded the link speed from the maximum advertised\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32)* @ixgbe_setup_mac_link_smartspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_mac_link_smartspeed(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %13 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %15 = load i32, i32* @IXGBE_AUTOC, align 4
  %16 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %25
  store i32 %30, i32* %28, align 8
  br label %31

31:                                               ; preds = %24, %3
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %37
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %49
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  store i64 0, i64* %10, align 8
  br label %59

59:                                               ; preds = %97, %55
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @IXGBE_SMARTSPEED_MAX_RETRIES, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %64, i32 %65, i32 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %155

71:                                               ; preds = %63
  store i64 0, i64* %9, align 8
  br label %72

72:                                               ; preds = %93, %71
  %73 = load i64, i64* %9, align 8
  %74 = icmp slt i64 %73, 5
  br i1 %74, label %75, label %96

75:                                               ; preds = %72
  %76 = call i32 @mdelay(i32 100)
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %78 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %80, align 8
  %82 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %83 = bitcast %struct.ixgbe_hw* %82 to %struct.ixgbe_hw.0*
  %84 = call i64 %81(%struct.ixgbe_hw.0* %83, i32* %8, i32* %11, i32 0)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %155

88:                                               ; preds = %75
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %88
  br label %155

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %9, align 8
  br label %72

96:                                               ; preds = %72
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %10, align 8
  br label %59

100:                                              ; preds = %59
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @IXGBE_AUTOC_KR_SUPP, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @IXGBE_AUTOC_KX4_KX_SUPP_MASK, align 4
  %108 = and i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105, %100
  br label %155

111:                                              ; preds = %105
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  store i32 1, i32* %114, align 4
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %115, i32 %116, i32 %117)
  store i64 %118, i64* %7, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %111
  br label %155

122:                                              ; preds = %111
  store i64 0, i64* %9, align 8
  br label %123

123:                                              ; preds = %144, %122
  %124 = load i64, i64* %9, align 8
  %125 = icmp slt i64 %124, 6
  br i1 %125, label %126, label %147

126:                                              ; preds = %123
  %127 = call i32 @mdelay(i32 100)
  %128 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %129 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64 (%struct.ixgbe_hw.0*, i32*, i32*, i32)*, i64 (%struct.ixgbe_hw.0*, i32*, i32*, i32)** %131, align 8
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %134 = bitcast %struct.ixgbe_hw* %133 to %struct.ixgbe_hw.0*
  %135 = call i64 %132(%struct.ixgbe_hw.0* %134, i32* %8, i32* %11, i32 0)
  store i64 %135, i64* %7, align 8
  %136 = load i64, i64* %7, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %126
  br label %155

139:                                              ; preds = %126
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %139
  br label %155

143:                                              ; preds = %139
  br label %144

144:                                              ; preds = %143
  %145 = load i64, i64* %9, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %9, align 8
  br label %123

147:                                              ; preds = %123
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %149 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  store i32 0, i32* %150, align 4
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw* %151, i32 %152, i32 %153)
  store i64 %154, i64* %7, align 8
  br label %155

155:                                              ; preds = %147, %142, %138, %121, %110, %91, %87, %70
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %164 = call i32 @hw_dbg(%struct.ixgbe_hw* %163, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %158, %155
  %166 = load i64, i64* %7, align 8
  ret i64 %166
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_setup_mac_link_82599(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
