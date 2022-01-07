; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_fmvj18x_cs.c_fjn_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pcmcia/extr_fmvj18x_cs.c_fjn_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32*, i32 }
%struct.local_info_t = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"fjn_reset(%s) called.\0A\00", align 1
@sram_config = common dso_local global i64 0, align 8
@CONFIG0_RST = common dso_local global i32 0, align 4
@CONFIG_0 = common dso_local global i64 0, align 8
@CONFIG0_RST_1 = common dso_local global i32 0, align 4
@MBH10302 = common dso_local global i64 0, align 8
@BANK_0 = common dso_local global i32 0, align 4
@CONFIG_1 = common dso_local global i64 0, align 8
@BANK_0U = common dso_local global i32 0, align 4
@D_TX_MODE = common dso_local global i32 0, align 4
@TX_MODE = common dso_local global i64 0, align 8
@ID_MATCHED = common dso_local global i32 0, align 4
@RX_MODE = common dso_local global i64 0, align 8
@NODE_ID = common dso_local global i64 0, align 8
@BANK_2 = common dso_local global i32 0, align 4
@BANK_2U = common dso_local global i32 0, align 4
@TDK = common dso_local global i64 0, align 8
@CONTEC = common dso_local global i64 0, align 8
@TDK_AUTO_MODE = common dso_local global i32 0, align 4
@COL_CTRL = common dso_local global i64 0, align 8
@AUTO_MODE = common dso_local global i32 0, align 4
@BMPR12 = common dso_local global i64 0, align 8
@BMPR13 = common dso_local global i64 0, align 8
@RX_SKIP = common dso_local global i64 0, align 8
@CONFIG0_DFL = common dso_local global i32 0, align 4
@CONFIG0_DFL_1 = common dso_local global i32 0, align 4
@DATAPORT = common dso_local global i64 0, align 8
@TX_STATUS = common dso_local global i64 0, align 8
@RX_STATUS = common dso_local global i64 0, align 8
@INTR_OFF = common dso_local global i32 0, align 4
@LAN_CTRL = common dso_local global i64 0, align 8
@D_TX_INTR = common dso_local global i32 0, align 4
@TX_INTR = common dso_local global i64 0, align 8
@D_RX_INTR = common dso_local global i32 0, align 4
@RX_INTR = common dso_local global i64 0, align 8
@INTR_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fjn_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjn_reset(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.local_info_t*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.local_info_t* @netdev_priv(%struct.net_device* %6)
  store %struct.local_info_t* %7, %struct.local_info_t** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @DEBUG(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i64, i64* @sram_config, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @CONFIG0_RST, align 4
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @CONFIG_0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @outb(i32 %18, i64 %22)
  br label %31

24:                                               ; preds = %1
  %25 = load i32, i32* @CONFIG0_RST_1, align 4
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @CONFIG_0, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outb(i32 %25, i64 %29)
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.local_info_t*, %struct.local_info_t** %3, align 8
  %33 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MBH10302, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load i32, i32* @BANK_0, align 4
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* @CONFIG_1, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %38, i64 %42)
  br label %51

44:                                               ; preds = %31
  %45 = load i32, i32* @BANK_0U, align 4
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* @CONFIG_1, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @outb(i32 %45, i64 %49)
  br label %51

51:                                               ; preds = %44, %37
  %52 = load i32, i32* @D_TX_MODE, align 4
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = load i64, i64* @TX_MODE, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @outb(i32 %52, i64 %56)
  %58 = load i32, i32* @ID_MATCHED, align 4
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = load i64, i64* @RX_MODE, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @outb(i32 %58, i64 %62)
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %83, %51
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 6
  br i1 %66, label %67, label %86

67:                                               ; preds = %64
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %4, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* @NODE_ID, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = call i32 @outb(i32 %74, i64 %81)
  br label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %64

86:                                               ; preds = %64
  %87 = load %struct.net_device*, %struct.net_device** %2, align 8
  %88 = call i32 @set_rx_mode(%struct.net_device* %87)
  %89 = load %struct.local_info_t*, %struct.local_info_t** %3, align 8
  %90 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MBH10302, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %86
  %95 = load i32, i32* @BANK_2, align 4
  %96 = load i32, i32* %4, align 4
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* @CONFIG_1, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outb(i32 %95, i64 %99)
  br label %108

101:                                              ; preds = %86
  %102 = load i32, i32* @BANK_2U, align 4
  %103 = load i32, i32* %4, align 4
  %104 = zext i32 %103 to i64
  %105 = load i64, i64* @CONFIG_1, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outb(i32 %102, i64 %106)
  br label %108

108:                                              ; preds = %101, %94
  %109 = load %struct.local_info_t*, %struct.local_info_t** %3, align 8
  %110 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TDK, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.local_info_t*, %struct.local_info_t** %3, align 8
  %116 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @CONTEC, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %114, %108
  %121 = load i32, i32* @TDK_AUTO_MODE, align 4
  %122 = load i32, i32* %4, align 4
  %123 = zext i32 %122 to i64
  %124 = load i64, i64* @COL_CTRL, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outb(i32 %121, i64 %125)
  br label %134

127:                                              ; preds = %114
  %128 = load i32, i32* @AUTO_MODE, align 4
  %129 = load i32, i32* %4, align 4
  %130 = zext i32 %129 to i64
  %131 = load i64, i64* @COL_CTRL, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @outb(i32 %128, i64 %132)
  br label %134

134:                                              ; preds = %127, %120
  %135 = load i32, i32* %4, align 4
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* @BMPR12, align 8
  %138 = add nsw i64 %136, %137
  %139 = call i32 @outb(i32 0, i64 %138)
  %140 = load i32, i32* %4, align 4
  %141 = zext i32 %140 to i64
  %142 = load i64, i64* @BMPR13, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @outb(i32 0, i64 %143)
  %145 = load i32, i32* %4, align 4
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* @RX_SKIP, align 8
  %148 = add nsw i64 %146, %147
  %149 = call i32 @outb(i32 1, i64 %148)
  %150 = load i64, i64* @sram_config, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %134
  %153 = load i32, i32* @CONFIG0_DFL, align 4
  %154 = load i32, i32* %4, align 4
  %155 = zext i32 %154 to i64
  %156 = load i64, i64* @CONFIG_0, align 8
  %157 = add nsw i64 %155, %156
  %158 = call i32 @outb(i32 %153, i64 %157)
  br label %166

159:                                              ; preds = %134
  %160 = load i32, i32* @CONFIG0_DFL_1, align 4
  %161 = load i32, i32* %4, align 4
  %162 = zext i32 %161 to i64
  %163 = load i64, i64* @CONFIG_0, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i32 @outb(i32 %160, i64 %164)
  br label %166

166:                                              ; preds = %159, %152
  %167 = load i32, i32* %4, align 4
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* @DATAPORT, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @inw(i64 %170)
  %172 = load i32, i32* %4, align 4
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* @DATAPORT, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @inw(i64 %175)
  %177 = load i32, i32* %4, align 4
  %178 = zext i32 %177 to i64
  %179 = load i64, i64* @TX_STATUS, align 8
  %180 = add nsw i64 %178, %179
  %181 = call i32 @outb(i32 255, i64 %180)
  %182 = load i32, i32* %4, align 4
  %183 = zext i32 %182 to i64
  %184 = load i64, i64* @RX_STATUS, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @outb(i32 255, i64 %185)
  %187 = load %struct.local_info_t*, %struct.local_info_t** %3, align 8
  %188 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @MBH10302, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %199

192:                                              ; preds = %166
  %193 = load i32, i32* @INTR_OFF, align 4
  %194 = load i32, i32* %4, align 4
  %195 = zext i32 %194 to i64
  %196 = load i64, i64* @LAN_CTRL, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @outb(i32 %193, i64 %197)
  br label %199

199:                                              ; preds = %192, %166
  %200 = load i32, i32* @D_TX_INTR, align 4
  %201 = load i32, i32* %4, align 4
  %202 = zext i32 %201 to i64
  %203 = load i64, i64* @TX_INTR, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @outb(i32 %200, i64 %204)
  %206 = load i32, i32* @D_RX_INTR, align 4
  %207 = load i32, i32* %4, align 4
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* @RX_INTR, align 8
  %210 = add nsw i64 %208, %209
  %211 = call i32 @outb(i32 %206, i64 %210)
  %212 = load %struct.local_info_t*, %struct.local_info_t** %3, align 8
  %213 = getelementptr inbounds %struct.local_info_t, %struct.local_info_t* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @MBH10302, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %224

217:                                              ; preds = %199
  %218 = load i32, i32* @INTR_ON, align 4
  %219 = load i32, i32* %4, align 4
  %220 = zext i32 %219 to i64
  %221 = load i64, i64* @LAN_CTRL, align 8
  %222 = add nsw i64 %220, %221
  %223 = call i32 @outb(i32 %218, i64 %222)
  br label %224

224:                                              ; preds = %217, %199
  ret void
}

declare dso_local %struct.local_info_t* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DEBUG(i32, i8*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @set_rx_mode(%struct.net_device*) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
