; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_sfp_modules_82599.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82599.c_ixgbe_setup_sfp_modules_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.ixgbe_hw.2*, i32, i32*)* }
%struct.ixgbe_hw.2 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@ixgbe_sfp_type_unknown = common dso_local global i64 0, align 8
@IXGBE_GSSR_MAC_CSR_SM = common dso_local global i32 0, align 4
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@IXGBE_CORECTL = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_10G_SERIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c" sfp module setup not complete\0A\00", align 1
@IXGBE_ERR_SFP_SETUP_NOT_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_setup_sfp_modules_82599 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_setup_sfp_modules_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ixgbe_sfp_type_unknown, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %147

14:                                               ; preds = %1
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = call i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw* %15)
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store i32* null, i32** %20, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %22 = call i64 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw* %21, i32* %4, i32* %5)
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %148

26:                                               ; preds = %14
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %30, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = bitcast %struct.ixgbe_hw* %32 to %struct.ixgbe_hw.1*
  %34 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %35 = call i64 %31(%struct.ixgbe_hw.1* %33, i32 %34)
  store i64 %35, i64* %3, align 8
  %36 = load i64, i64* %3, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %39, i64* %3, align 8
  br label %148

40:                                               ; preds = %26
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32 (%struct.ixgbe_hw.2*, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32*)** %44, align 8
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %47 = bitcast %struct.ixgbe_hw* %46 to %struct.ixgbe_hw.2*
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %5, align 4
  %50 = call i32 %45(%struct.ixgbe_hw.2* %47, i32 %49, i32* %6)
  br label %51

51:                                               ; preds = %54, %40
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 65535
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %56 = load i32, i32* @IXGBE_CORECTL, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %55, i32 %56, i32 %57)
  %59 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %60 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %59)
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32 (%struct.ixgbe_hw.2*, i32, i32*)*, i32 (%struct.ixgbe_hw.2*, i32, i32*)** %64, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = bitcast %struct.ixgbe_hw* %66 to %struct.ixgbe_hw.2*
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = call i32 %65(%struct.ixgbe_hw.2* %67, i32 %69, i32* %6)
  br label %51

71:                                               ; preds = %51
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %75, align 8
  %77 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %78 = bitcast %struct.ixgbe_hw* %77 to %struct.ixgbe_hw.0*
  %79 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %80 = call i32 %76(%struct.ixgbe_hw.0* %78, i32 %79)
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %82 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %84, 1000
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 2000
  %91 = call i32 @usleep_range(i32 %85, i32 %90)
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %93 = call i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %71
  %96 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %97 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %99, align 8
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %102 = bitcast %struct.ixgbe_hw* %101 to %struct.ixgbe_hw.1*
  %103 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %104 = call i64 %100(%struct.ixgbe_hw.1* %102, i32 %103)
  store i64 %104, i64* %3, align 8
  %105 = load i64, i64* %3, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %95
  br label %148

108:                                              ; preds = %95
  store i32 1, i32* %7, align 4
  br label %109

109:                                              ; preds = %108, %71
  %110 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %111 = load i32, i32* @IXGBE_AUTOC, align 4
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %113 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @IXGBE_AUTOC_LMS_10G_SERIAL, align 4
  %117 = or i32 %115, %116
  %118 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %110, i32 %111, i32 %117)
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %120 = load i32, i32* @IXGBE_AUTOC, align 4
  %121 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %119, i32 %120)
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %123 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %126 = call i64 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw* %125)
  store i64 %126, i64* %3, align 8
  %127 = load i32, i32* %7, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %109
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %131 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %133, align 8
  %135 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %136 = bitcast %struct.ixgbe_hw* %135 to %struct.ixgbe_hw.0*
  %137 = load i32, i32* @IXGBE_GSSR_MAC_CSR_SM, align 4
  %138 = call i32 %134(%struct.ixgbe_hw.0* %136, i32 %137)
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %129, %109
  %140 = load i64, i64* %3, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %144 = call i32 @hw_dbg(%struct.ixgbe_hw* %143, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %145 = load i64, i64* @IXGBE_ERR_SFP_SETUP_NOT_COMPLETE, align 8
  store i64 %145, i64* %3, align 8
  br label %148

146:                                              ; preds = %139
  br label %147

147:                                              ; preds = %146, %1
  br label %148

148:                                              ; preds = %147, %142, %107, %38, %25
  %149 = load i64, i64* %3, align 8
  ret i64 %149
}

declare dso_local i32 @ixgbe_init_mac_link_ops_82599(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_get_sfp_init_sequence_offsets(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @ixgbe_verify_lesm_fw_enabled_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i64 @ixgbe_reset_pipeline_82599(%struct.ixgbe_hw*) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
