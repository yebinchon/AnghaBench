; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_winbond-cir.c_wbcir_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_winbond-cir.c_wbcir_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbcir_data = type { i32, i32, i64, i32, %struct.TYPE_2__, i32, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@WBCIR_BANK_0 = common dso_local global i32 0, align 4
@WBCIR_IRQ_NONE = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_IER = common dso_local global i64 0, align 8
@protocol = common dso_local global i32 0, align 4
@invert = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_CTL = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_STS = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_EV_EN = common dso_local global i64 0, align 8
@WBCIR_REG_WCEIR_CFG1 = common dso_local global i64 0, align 8
@WBCIR_REG_ECEIR_CCTL = common dso_local global i64 0, align 8
@WBCIR_REG_ECEIR_CTS = common dso_local global i64 0, align 8
@WBCIR_BANK_2 = common dso_local global i32 0, align 4
@WBCIR_EXT_ENABLE = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_EXCR1 = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_EXCR2 = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_BGDL = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_BGDH = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_MCR = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_LSR = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_MSR = common dso_local global i64 0, align 8
@WBCIR_BANK_7 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_RCCFG = common dso_local global i64 0, align 8
@WBCIR_BANK_4 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_IRCR1 = common dso_local global i64 0, align 8
@WBCIR_BANK_5 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_IRCR2 = common dso_local global i64 0, align 8
@WBCIR_BANK_6 = common dso_local global i32 0, align 4
@WBCIR_REG_SP3_IRCR3 = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_IRRXDC = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_IRTXMC = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_IRCFG4 = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_FCR = common dso_local global i64 0, align 8
@WBCIR_REG_SP3_ASCR = common dso_local global i64 0, align 8
@LED_OFF = common dso_local global i32 0, align 4
@WBCIR_IRQ_RX = common dso_local global i32 0, align 4
@WBCIR_IRQ_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbcir_data*)* @wbcir_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbcir_init_hw(%struct.wbcir_data* %0) #0 {
  %2 = alloca %struct.wbcir_data*, align 8
  %3 = alloca i32, align 4
  store %struct.wbcir_data* %0, %struct.wbcir_data** %2, align 8
  %4 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %5 = load i32, i32* @WBCIR_BANK_0, align 4
  %6 = call i32 @wbcir_select_bank(%struct.wbcir_data* %4, i32 %5)
  %7 = load i32, i32* @WBCIR_IRQ_NONE, align 4
  %8 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %9 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WBCIR_REG_SP3_IER, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @outb(i32 %7, i64 %12)
  %14 = load i32, i32* @protocol, align 4
  %15 = shl i32 %14, 4
  store i32 %15, i32* %3, align 4
  %16 = load i64, i64* @invert, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, 8
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %24 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WBCIR_REG_WCEIR_CTL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 %22, i64 %27)
  %29 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %30 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WBCIR_REG_WCEIR_STS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @wbcir_set_bits(i64 %33, i32 23, i32 23)
  %35 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %36 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WBCIR_REG_WCEIR_EV_EN, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @wbcir_set_bits(i64 %39, i32 0, i32 7)
  %41 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %42 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @WBCIR_REG_WCEIR_CFG1, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @wbcir_set_bits(i64 %45, i32 74, i32 127)
  %47 = load i64, i64* @invert, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %21
  %50 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %51 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %50, i32 0, i32 6
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @WBCIR_REG_ECEIR_CCTL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @outb(i32 4, i64 %54)
  br label %63

56:                                               ; preds = %21
  %57 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %58 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %57, i32 0, i32 6
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @WBCIR_REG_ECEIR_CCTL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i32 0, i64 %61)
  br label %63

63:                                               ; preds = %56, %49
  %64 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %65 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %64, i32 0, i32 6
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @WBCIR_REG_ECEIR_CTS, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @outb(i32 16, i64 %68)
  %70 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %71 = load i32, i32* @WBCIR_BANK_2, align 4
  %72 = call i32 @wbcir_select_bank(%struct.wbcir_data* %70, i32 %71)
  %73 = load i32, i32* @WBCIR_EXT_ENABLE, align 4
  %74 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %75 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WBCIR_REG_SP3_EXCR1, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @outb(i32 %73, i64 %78)
  %80 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %81 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @WBCIR_REG_SP3_EXCR2, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outb(i32 48, i64 %84)
  %86 = load i32, i32* @protocol, align 4
  switch i32 %86, label %108 [
    i32 129, label %87
    i32 128, label %94
    i32 130, label %101
  ]

87:                                               ; preds = %63
  %88 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %89 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @WBCIR_REG_SP3_BGDL, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @outb(i32 167, i64 %92)
  br label %108

94:                                               ; preds = %63
  %95 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %96 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @WBCIR_REG_SP3_BGDL, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @outb(i32 83, i64 %99)
  br label %108

101:                                              ; preds = %63
  %102 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %103 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @WBCIR_REG_SP3_BGDL, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outb(i32 105, i64 %106)
  br label %108

108:                                              ; preds = %63, %101, %94, %87
  %109 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %110 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @WBCIR_REG_SP3_BGDH, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outb(i32 0, i64 %113)
  %115 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %116 = load i32, i32* @WBCIR_BANK_0, align 4
  %117 = call i32 @wbcir_select_bank(%struct.wbcir_data* %115, i32 %116)
  %118 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %119 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @WBCIR_REG_SP3_MCR, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @outb(i32 192, i64 %122)
  %124 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %125 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @WBCIR_REG_SP3_LSR, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @inb(i64 %128)
  %130 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %131 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @WBCIR_REG_SP3_MSR, align 8
  %134 = add nsw i64 %132, %133
  %135 = call i32 @inb(i64 %134)
  %136 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %137 = load i32, i32* @WBCIR_BANK_7, align 4
  %138 = call i32 @wbcir_select_bank(%struct.wbcir_data* %136, i32 %137)
  %139 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %140 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @WBCIR_REG_SP3_RCCFG, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @outb(i32 16, i64 %143)
  %145 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %146 = load i32, i32* @WBCIR_BANK_4, align 4
  %147 = call i32 @wbcir_select_bank(%struct.wbcir_data* %145, i32 %146)
  %148 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %149 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @WBCIR_REG_SP3_IRCR1, align 8
  %152 = add nsw i64 %150, %151
  %153 = call i32 @outb(i32 0, i64 %152)
  %154 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %155 = load i32, i32* @WBCIR_BANK_5, align 4
  %156 = call i32 @wbcir_select_bank(%struct.wbcir_data* %154, i32 %155)
  %157 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %158 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @WBCIR_REG_SP3_IRCR2, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @outb(i32 0, i64 %161)
  %163 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %164 = load i32, i32* @WBCIR_BANK_6, align 4
  %165 = call i32 @wbcir_select_bank(%struct.wbcir_data* %163, i32 %164)
  %166 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %167 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @WBCIR_REG_SP3_IRCR3, align 8
  %170 = add nsw i64 %168, %169
  %171 = call i32 @outb(i32 32, i64 %170)
  %172 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %173 = load i32, i32* @WBCIR_BANK_7, align 4
  %174 = call i32 @wbcir_select_bank(%struct.wbcir_data* %172, i32 %173)
  %175 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %176 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @WBCIR_REG_SP3_IRRXDC, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @outb(i32 242, i64 %179)
  %181 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %182 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @WBCIR_REG_SP3_IRTXMC, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @outb(i32 105, i64 %185)
  %187 = load i64, i64* @invert, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %108
  %190 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %191 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @WBCIR_REG_SP3_IRCFG4, align 8
  %194 = add nsw i64 %192, %193
  %195 = call i32 @outb(i32 16, i64 %194)
  br label %203

196:                                              ; preds = %108
  %197 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %198 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @WBCIR_REG_SP3_IRCFG4, align 8
  %201 = add nsw i64 %199, %200
  %202 = call i32 @outb(i32 0, i64 %201)
  br label %203

203:                                              ; preds = %196, %189
  %204 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %205 = load i32, i32* @WBCIR_BANK_0, align 4
  %206 = call i32 @wbcir_select_bank(%struct.wbcir_data* %204, i32 %205)
  %207 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %208 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @WBCIR_REG_SP3_FCR, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i32 @outb(i32 151, i64 %211)
  %213 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %214 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @WBCIR_REG_SP3_ASCR, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @outb(i32 224, i64 %217)
  %219 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %220 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %219, i32 0, i32 0
  store i32 0, i32* %220, align 8
  %221 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %222 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @LED_OFF, align 4
  %225 = call i32 @led_trigger_event(i32 %223, i32 %224)
  %226 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %227 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %226, i32 0, i32 1
  store i32 0, i32* %227, align 4
  %228 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %229 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  store i64 0, i64* %230, align 8
  %231 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %232 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %231, i32 0, i32 3
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @ir_raw_event_reset(i32 %233)
  %235 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %236 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @ir_raw_event_handle(i32 %237)
  %239 = load i32, i32* @WBCIR_IRQ_RX, align 4
  %240 = load i32, i32* @WBCIR_IRQ_ERR, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.wbcir_data*, %struct.wbcir_data** %2, align 8
  %243 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @WBCIR_REG_SP3_IER, align 8
  %246 = add nsw i64 %244, %245
  %247 = call i32 @outb(i32 %241, i64 %246)
  ret void
}

declare dso_local i32 @wbcir_select_bank(%struct.wbcir_data*, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @wbcir_set_bits(i64, i32, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i32 @ir_raw_event_reset(i32) #1

declare dso_local i32 @ir_raw_event_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
