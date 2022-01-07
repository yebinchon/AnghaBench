; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa.c_reset_elsa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa.c_reset_elsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i32, i32, i64, i64, i64 }

@ELSA_ISDN_RESET = common dso_local global i32 0, align 4
@ELSA_QS1000PCI = common dso_local global i64 0, align 8
@ELSA_QS3000PCI = common dso_local global i64 0, align 8
@ELSA_PCMCIA_IPAC = common dso_local global i64 0, align 8
@IPAC_POTA2 = common dso_local global i32 0, align 4
@IPAC_MASK = common dso_local global i32 0, align 4
@IPAC_ACFG = common dso_local global i32 0, align 4
@IPAC_AOE = common dso_local global i32 0, align 4
@IPAC_PCFG = common dso_local global i32 0, align 4
@IPAC_ATX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @reset_elsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_elsa(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %3 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %4 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %103

9:                                                ; preds = %1
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @byteout(i64 %14, i32 0)
  br label %16

16:                                               ; preds = %20, %9
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %18 = call i64 @TimerRun(%struct.IsdnCardState* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %16

21:                                               ; preds = %16
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, 80
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @ELSA_ISDN_RESET, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %31 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %29
  store i32 %35, i32* %33, align 8
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %42 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @byteout(i64 %40, i32 %45)
  %47 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %48 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @byteout(i64 %51, i32 0)
  br label %53

53:                                               ; preds = %57, %21
  %54 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %55 = call i64 @TimerRun(%struct.IsdnCardState* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %53

58:                                               ; preds = %53
  %59 = load i32, i32* @ELSA_ISDN_RESET, align 4
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %61 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 8
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %67 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 6
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @byteout(i64 %70, i32 %75)
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %78 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @byteout(i64 %81, i32 0)
  br label %83

83:                                               ; preds = %87, %58
  %84 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %85 = call i64 @TimerRun(%struct.IsdnCardState* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  br label %83

88:                                               ; preds = %83
  %89 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %90 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %97 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 4
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @byteout(i64 %100, i32 255)
  br label %102

102:                                              ; preds = %95, %88
  br label %103

103:                                              ; preds = %102, %1
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %105 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ELSA_QS1000PCI, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %121, label %109

109:                                              ; preds = %103
  %110 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %111 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ELSA_QS3000PCI, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %117 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @ELSA_PCMCIA_IPAC, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %269

121:                                              ; preds = %115, %109, %103
  %122 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %123 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %128 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IPAC_POTA2, align 4
  %133 = call i32 @writereg(i32 %126, i32 %131, i32 %132, i32 32)
  %134 = call i32 @mdelay(i32 10)
  %135 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %136 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %141 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @IPAC_POTA2, align 4
  %146 = call i32 @writereg(i32 %139, i32 %144, i32 %145, i32 0)
  %147 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %148 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %153 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @IPAC_MASK, align 4
  %158 = call i32 @writereg(i32 %151, i32 %156, i32 %157, i32 192)
  %159 = call i32 @mdelay(i32 10)
  %160 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %161 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @ELSA_PCMCIA_IPAC, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %190

165:                                              ; preds = %121
  %166 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %167 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %172 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @IPAC_ACFG, align 4
  %177 = call i32 @writereg(i32 %170, i32 %175, i32 %176, i32 0)
  %178 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %179 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %184 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @IPAC_AOE, align 4
  %189 = call i32 @writereg(i32 %182, i32 %187, i32 %188, i32 60)
  br label %227

190:                                              ; preds = %121
  %191 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %192 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %197 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @IPAC_PCFG, align 4
  %202 = call i32 @writereg(i32 %195, i32 %200, i32 %201, i32 16)
  %203 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %204 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %209 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @IPAC_ACFG, align 4
  %214 = call i32 @writereg(i32 %207, i32 %212, i32 %213, i32 4)
  %215 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %216 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %221 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @IPAC_AOE, align 4
  %226 = call i32 @writereg(i32 %219, i32 %224, i32 %225, i32 248)
  br label %227

227:                                              ; preds = %190, %165
  %228 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %229 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %234 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %233, i32 0, i32 1
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @IPAC_ATX, align 4
  %239 = call i32 @writereg(i32 %232, i32 %237, i32 %238, i32 255)
  %240 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %241 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @ELSA_QS1000PCI, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %253

245:                                              ; preds = %227
  %246 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %247 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = add nsw i64 %250, 76
  %252 = call i32 @byteout(i64 %251, i32 65)
  br label %268

253:                                              ; preds = %227
  %254 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %255 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @ELSA_QS3000PCI, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %267

259:                                              ; preds = %253
  %260 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %261 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, 76
  %266 = call i32 @byteout(i64 %265, i32 67)
  br label %267

267:                                              ; preds = %259, %253
  br label %268

268:                                              ; preds = %267, %245
  br label %269

269:                                              ; preds = %268, %115
  ret void
}

declare dso_local i32 @byteout(i64, i32) #1

declare dso_local i64 @TimerRun(%struct.IsdnCardState*) #1

declare dso_local i32 @writereg(i32, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
