; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_bcm63xx_pcmcia.c___get_socket_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_bcm63xx_pcmcia.c___get_socket_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm63xx_pcmcia_socket = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@PCMCIA_C1_REG = common dso_local global i32 0, align 4
@PCMCIA_C1_CD1_MASK = common dso_local global i32 0, align 4
@PCMCIA_C1_CD2_MASK = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@PCMCIA_C1_VS1OE_MASK = common dso_local global i32 0, align 4
@PCMCIA_C1_VS2OE_MASK = common dso_local global i32 0, align 4
@PCMCIA_C1_VS1_MASK = common dso_local global i32 0, align 4
@IN_VS1 = common dso_local global i32 0, align 4
@PCMCIA_C1_VS2_MASK = common dso_local global i32 0, align 4
@IN_VS2 = common dso_local global i32 0, align 4
@IN_CD1_VS2H = common dso_local global i32 0, align 4
@IN_CD2_VS2H = common dso_local global i32 0, align 4
@IN_CD1_VS1H = common dso_local global i32 0, align 4
@IN_CD2_VS1H = common dso_local global i32 0, align 4
@vscd_to_cardtype = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"unsupported card type\0A\00", align 1
@PCMCIA_C1_EN_PCMCIA_MASK = common dso_local global i32 0, align 4
@PCMCIA_C1_EN_CARDBUS_MASK = common dso_local global i32 0, align 4
@CARD_PCCARD = common dso_local global i32 0, align 4
@CARD_CARDBUS = common dso_local global i32 0, align 4
@SS_CARDBUS = common dso_local global i32 0, align 4
@CARD_3V = common dso_local global i32 0, align 4
@SS_3VCARD = common dso_local global i32 0, align 4
@CARD_XV = common dso_local global i32 0, align 4
@SS_XVCARD = common dso_local global i32 0, align 4
@SS_POWERON = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm63xx_pcmcia_socket*)* @__get_socket_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_socket_status(%struct.bcm63xx_pcmcia_socket* %0) #0 {
  %2 = alloca %struct.bcm63xx_pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm63xx_pcmcia_socket* %0, %struct.bcm63xx_pcmcia_socket** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %7 = load i32, i32* @PCMCIA_C1_REG, align 4
  %8 = call i32 @pcmcia_readl(%struct.bcm63xx_pcmcia_socket* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @PCMCIA_C1_CD1_MASK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PCMCIA_C1_CD2_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @SS_DETECT, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %13, %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SS_DETECT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %191

27:                                               ; preds = %22
  %28 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %29 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %191, label %32

32:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  %33 = load i32, i32* @PCMCIA_C1_VS1OE_MASK, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @PCMCIA_C1_VS2OE_MASK, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @PCMCIA_C1_REG, align 4
  %42 = call i32 @pcmcia_writel(%struct.bcm63xx_pcmcia_socket* %39, i32 %40, i32 %41)
  %43 = call i32 @udelay(i32 10)
  %44 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %45 = load i32, i32* @PCMCIA_C1_REG, align 4
  %46 = call i32 @pcmcia_readl(%struct.bcm63xx_pcmcia_socket* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PCMCIA_C1_VS1_MASK, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = load i32, i32* @IN_VS1, align 4
  br label %54

53:                                               ; preds = %32
  br label %54

54:                                               ; preds = %53, %51
  %55 = phi i32 [ %52, %51 ], [ 0, %53 ]
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @PCMCIA_C1_VS2_MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @IN_VS2, align 4
  br label %65

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %62
  %66 = phi i32 [ %63, %62 ], [ 0, %64 ]
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* @PCMCIA_C1_VS1OE_MASK, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %4, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @PCMCIA_C1_VS2OE_MASK, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @PCMCIA_C1_REG, align 4
  %79 = call i32 @pcmcia_writel(%struct.bcm63xx_pcmcia_socket* %76, i32 %77, i32 %78)
  %80 = call i32 @udelay(i32 10)
  %81 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %82 = load i32, i32* @PCMCIA_C1_REG, align 4
  %83 = call i32 @pcmcia_readl(%struct.bcm63xx_pcmcia_socket* %81, i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @PCMCIA_C1_CD1_MASK, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %65
  %89 = load i32, i32* @IN_CD1_VS2H, align 4
  br label %91

90:                                               ; preds = %65
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @PCMCIA_C1_CD2_MASK, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @IN_CD2_VS2H, align 4
  br label %102

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101, %99
  %103 = phi i32 [ %100, %99 ], [ 0, %101 ]
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* @PCMCIA_C1_VS1OE_MASK, align 4
  %107 = load i32, i32* %4, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* @PCMCIA_C1_VS2OE_MASK, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %4, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %4, align 4
  %113 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @PCMCIA_C1_REG, align 4
  %116 = call i32 @pcmcia_writel(%struct.bcm63xx_pcmcia_socket* %113, i32 %114, i32 %115)
  %117 = call i32 @udelay(i32 10)
  %118 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %119 = load i32, i32* @PCMCIA_C1_REG, align 4
  %120 = call i32 @pcmcia_readl(%struct.bcm63xx_pcmcia_socket* %118, i32 %119)
  store i32 %120, i32* %4, align 4
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @PCMCIA_C1_CD1_MASK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %102
  %126 = load i32, i32* @IN_CD1_VS1H, align 4
  br label %128

127:                                              ; preds = %102
  br label %128

128:                                              ; preds = %127, %125
  %129 = phi i32 [ %126, %125 ], [ 0, %127 ]
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load i32, i32* @PCMCIA_C1_CD2_MASK, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %128
  %137 = load i32, i32* @IN_CD2_VS1H, align 4
  br label %139

138:                                              ; preds = %128
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ]
  %141 = load i32, i32* %5, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %5, align 4
  %143 = load i32*, i32** @vscd_to_cardtype, align 8
  %144 = load i32, i32* %5, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %149 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %151 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %159, label %154

154:                                              ; preds = %139
  %155 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %156 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %159

159:                                              ; preds = %154, %139
  %160 = load i32, i32* @PCMCIA_C1_VS1OE_MASK, align 4
  %161 = load i32, i32* @PCMCIA_C1_VS2OE_MASK, align 4
  %162 = or i32 %160, %161
  %163 = xor i32 %162, -1
  %164 = load i32, i32* %4, align 4
  %165 = and i32 %164, %163
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* @PCMCIA_C1_EN_PCMCIA_MASK, align 4
  %167 = load i32, i32* @PCMCIA_C1_EN_CARDBUS_MASK, align 4
  %168 = or i32 %166, %167
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %4, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %4, align 4
  %172 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %173 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @CARD_PCCARD, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %159
  %179 = load i32, i32* @PCMCIA_C1_EN_PCMCIA_MASK, align 4
  %180 = load i32, i32* %4, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %4, align 4
  br label %186

182:                                              ; preds = %159
  %183 = load i32, i32* @PCMCIA_C1_EN_CARDBUS_MASK, align 4
  %184 = load i32, i32* %4, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %4, align 4
  br label %186

186:                                              ; preds = %182, %178
  %187 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %188 = load i32, i32* %4, align 4
  %189 = load i32, i32* @PCMCIA_C1_REG, align 4
  %190 = call i32 @pcmcia_writel(%struct.bcm63xx_pcmcia_socket* %187, i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %186, %27, %22
  %192 = load i32, i32* %3, align 4
  %193 = load i32, i32* @SS_DETECT, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 1, i32 0
  %198 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %199 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 8
  %200 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %201 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @CARD_CARDBUS, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %191
  %207 = load i32, i32* @SS_CARDBUS, align 4
  %208 = load i32, i32* %3, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %206, %191
  %211 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %212 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @CARD_3V, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %210
  %218 = load i32, i32* @SS_3VCARD, align 4
  %219 = load i32, i32* %3, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %3, align 4
  br label %221

221:                                              ; preds = %217, %210
  %222 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %223 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @CARD_XV, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = load i32, i32* @SS_XVCARD, align 4
  %230 = load i32, i32* %3, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %3, align 4
  br label %232

232:                                              ; preds = %228, %221
  %233 = load i32, i32* @SS_POWERON, align 4
  %234 = load i32, i32* %3, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %3, align 4
  %236 = load %struct.bcm63xx_pcmcia_socket*, %struct.bcm63xx_pcmcia_socket** %2, align 8
  %237 = getelementptr inbounds %struct.bcm63xx_pcmcia_socket, %struct.bcm63xx_pcmcia_socket* %236, i32 0, i32 2
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @gpio_get_value(i32 %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %232
  %244 = load i32, i32* @SS_READY, align 4
  %245 = load i32, i32* %3, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %243, %232
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @pcmcia_readl(%struct.bcm63xx_pcmcia_socket*, i32) #1

declare dso_local i32 @pcmcia_writel(%struct.bcm63xx_pcmcia_socket*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @gpio_get_value(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
