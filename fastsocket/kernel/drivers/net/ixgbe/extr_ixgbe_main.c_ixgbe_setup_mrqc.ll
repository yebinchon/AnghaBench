; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_setup_mrqc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_main.c_ixgbe_setup_mrqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_4__*, i32, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i32, i64 }
%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ixgbe_setup_mrqc.seed = internal constant [10 x i32] [i32 -493758659, i32 403041388, i32 714388237, i32 -1521538068, i32 -364269700, i32 -501961411, i32 -1202345282, i32 1782474730, i32 339102999, i32 1005395981], align 16
@RING_F_RSS = common dso_local global i64 0, align 8
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_RXCSUM = common dso_local global i32 0, align 4
@IXGBE_RXCSUM_PCSD = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_MRQC_RSSEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_VMDQRT8TCEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_VMDQRT4TCEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_VMDQRSS32EN = common dso_local global i32 0, align 4
@IXGBE_MRQC_VMDQRSS64EN = common dso_local global i32 0, align 4
@IXGBE_MRQC_RTRSS8TCEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_RTRSS4TCEN = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV4 = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV4_TCP = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6 = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6_TCP = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV4_UDP = common dso_local global i32 0, align 4
@IXGBE_FLAG2_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@IXGBE_MRQC_RSS_FIELD_IPV6_UDP = common dso_local global i32 0, align 4
@IXGBE_MRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_setup_mrqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_setup_mrqc(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 4
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i64, i64* @RING_F_RSS, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 2, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %26, %1
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %43, %30
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 10
  br i1 %33, label %34, label %46

34:                                               ; preds = %31
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @IXGBE_RSSRK(i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [10 x i32], [10 x i32]* @ixgbe_setup_mrqc.seed, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %35, i32 %37, i32 %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %31

46:                                               ; preds = %31
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 128
  br i1 %49, label %50, label %77

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %54, %50
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 %58, 17
  %60 = or i32 %57, %59
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 3
  %63 = icmp eq i32 %62, 3
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %66 = load i32, i32* %7, align 4
  %67 = ashr i32 %66, 2
  %68 = call i32 @IXGBE_RETA(i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %55
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %8, align 4
  br label %47

77:                                               ; preds = %47
  %78 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %79 = load i32, i32* @IXGBE_RXCSUM, align 4
  %80 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %78, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @IXGBE_RXCSUM_PCSD, align 4
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = load i32, i32* @IXGBE_RXCSUM, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %84, i32 %85, i32 %86)
  %88 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %88, i32 0, i32 4
  %90 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %77
  %96 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %96, i32 0, i32 2
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i64, i64* @RING_F_RSS, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %95
  %105 = load i32, i32* @IXGBE_MRQC_RSSEN, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %95
  br label %159

107:                                              ; preds = %77
  %108 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @netdev_get_num_tc(i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %113 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %144

118:                                              ; preds = %107
  %119 = load i32, i32* %10, align 4
  %120 = icmp sgt i32 %119, 4
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* @IXGBE_MRQC_VMDQRT8TCEN, align 4
  store i32 %122, i32* %4, align 4
  br label %143

123:                                              ; preds = %118
  %124 = load i32, i32* %10, align 4
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @IXGBE_MRQC_VMDQRT4TCEN, align 4
  store i32 %127, i32* %4, align 4
  br label %142

128:                                              ; preds = %123
  %129 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %129, i32 0, i32 2
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i64, i64* @RING_F_RSS, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %135, 4
  br i1 %136, label %137, label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @IXGBE_MRQC_VMDQRSS32EN, align 4
  store i32 %138, i32* %4, align 4
  br label %141

139:                                              ; preds = %128
  %140 = load i32, i32* @IXGBE_MRQC_VMDQRSS64EN, align 4
  store i32 %140, i32* %4, align 4
  br label %141

141:                                              ; preds = %139, %137
  br label %142

142:                                              ; preds = %141, %126
  br label %143

143:                                              ; preds = %142, %121
  br label %158

144:                                              ; preds = %107
  %145 = load i32, i32* %10, align 4
  %146 = icmp sgt i32 %145, 4
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i32, i32* @IXGBE_MRQC_RTRSS8TCEN, align 4
  store i32 %148, i32* %4, align 4
  br label %157

149:                                              ; preds = %144
  %150 = load i32, i32* %10, align 4
  %151 = icmp sgt i32 %150, 1
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i32, i32* @IXGBE_MRQC_RTRSS4TCEN, align 4
  store i32 %153, i32* %4, align 4
  br label %156

154:                                              ; preds = %149
  %155 = load i32, i32* @IXGBE_MRQC_RSSEN, align 4
  store i32 %155, i32* %4, align 4
  br label %156

156:                                              ; preds = %154, %152
  br label %157

157:                                              ; preds = %156, %147
  br label %158

158:                                              ; preds = %157, %143
  br label %159

159:                                              ; preds = %158, %106
  %160 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV4, align 4
  %161 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV4_TCP, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6_TCP, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* %4, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %4, align 4
  %169 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %170 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IXGBE_FLAG2_RSS_FIELD_IPV4_UDP, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %159
  %176 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV4_UDP, align 4
  %177 = load i32, i32* %4, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %175, %159
  %180 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %181 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @IXGBE_FLAG2_RSS_FIELD_IPV6_UDP, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %179
  %187 = load i32, i32* @IXGBE_MRQC_RSS_FIELD_IPV6_UDP, align 4
  %188 = load i32, i32* %4, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %4, align 4
  br label %190

190:                                              ; preds = %186, %179
  %191 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %192 = load i32, i32* @IXGBE_MRQC, align 4
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %191, i32 %192, i32 %193)
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_RSSRK(i32) #1

declare dso_local i32 @IXGBE_RETA(i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @netdev_get_num_tc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
