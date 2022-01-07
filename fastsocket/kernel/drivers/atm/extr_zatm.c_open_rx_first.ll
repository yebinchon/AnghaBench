; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_open_rx_first.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_zatm.c_open_rx_first.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_vcc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.zatm_dev = type { i32, %struct.atm_vcc** }
%struct.zatm_vcc = type { i16, i16 }

@.str = private unnamed_addr constant [22 x i8] c"open_rx_first (0x%x)\0A\00", align 1
@ATM_NONE = common dso_local global i64 0, align 8
@ATM_AAL5 = common dso_local global i64 0, align 8
@ATM_AAL5_TRAILER = common dso_local global i64 0, align 8
@ATM_CELL_PAYLOAD = common dso_local global i32 0, align 4
@ZATM_AAL0_POOL = common dso_local global i16 0, align 2
@EMSGSIZE = common dso_local global i32 0, align 4
@zwait = common dso_local global i32 0, align 4
@uPD98401_OPEN_CHAN = common dso_local global i32 0, align 4
@CMR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"0x%x 0x%x\0A\00", align 1
@CER = common dso_local global i32 0, align 4
@uPD98401_CHAN_ADDR = common dso_local global i16 0, align 2
@uPD98401_CHAN_ADDR_SHIFT = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [12 x i8] c"chan is %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"pool %d\0A\00", align 1
@uPD98401_RXVC_POOL_SHIFT = common dso_local global i32 0, align 4
@VC_SIZE = common dso_local global i16 0, align 2
@uPD98401_RXVC_OD = common dso_local global i32 0, align 4
@uPD98401_RXVC_AR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_vcc*)* @open_rx_first to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_rx_first(%struct.atm_vcc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_vcc*, align 8
  %4 = alloca %struct.zatm_dev*, align 8
  %5 = alloca %struct.zatm_vcc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.atm_vcc* %0, %struct.atm_vcc** %3, align 8
  %9 = call zeroext i16 @inb_p(i32 49235)
  %10 = call i32 (i8*, i16, ...) @DPRINTK(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i16 zeroext %9)
  %11 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %12 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.zatm_dev* @ZATM_DEV(i32 %13)
  store %struct.zatm_dev* %14, %struct.zatm_dev** %4, align 8
  %15 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %16 = call %struct.zatm_vcc* @ZATM_VCC(%struct.atm_vcc* %15)
  store %struct.zatm_vcc* %16, %struct.zatm_vcc** %5, align 8
  %17 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %18 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %17, i32 0, i32 0
  store i16 0, i16* %18, align 2
  %19 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %20 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ATM_NONE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %193

27:                                               ; preds = %1
  %28 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %29 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ATM_AAL5, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %27
  %35 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %36 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 65464
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %43 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 65464, i32* %45, align 8
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %48 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @ATM_AAL5_TRAILER, align 8
  %54 = add nsw i64 %52, %53
  %55 = load i32, i32* @ATM_CELL_PAYLOAD, align 4
  %56 = call i32 @DIV_ROUND_UP(i64 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @ATM_CELL_PAYLOAD, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call zeroext i16 @pool_index(i32 %59)
  %61 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %62 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %61, i32 0, i32 1
  store i16 %60, i16* %62, align 2
  br label %67

63:                                               ; preds = %27
  store i32 1, i32* %8, align 4
  %64 = load i16, i16* @ZATM_AAL0_POOL, align 2
  %65 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %66 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %65, i32 0, i32 1
  store i16 %64, i16* %66, align 2
  br label %67

67:                                               ; preds = %63, %46
  %68 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %69 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %68, i32 0, i32 1
  %70 = load i16, i16* %69, align 2
  %71 = zext i16 %70 to i32
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* @EMSGSIZE, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %193

76:                                               ; preds = %67
  %77 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %78 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  %81 = load i32, i32* @zwait, align 4
  %82 = load i32, i32* @uPD98401_OPEN_CHAN, align 4
  %83 = load i32, i32* @CMR, align 4
  %84 = call i32 @zout(i32 %82, i32 %83)
  %85 = load i32, i32* @zwait, align 4
  %86 = load i32, i32* @CMR, align 4
  %87 = call zeroext i16 @zin(i32 %86)
  %88 = load i32, i32* @CER, align 4
  %89 = call zeroext i16 @zin(i32 %88)
  %90 = zext i16 %89 to i32
  %91 = call i32 (i8*, i16, ...) @DPRINTK(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %87, i32 %90)
  %92 = load i32, i32* @CMR, align 4
  %93 = call zeroext i16 @zin(i32 %92)
  %94 = zext i16 %93 to i32
  %95 = load i16, i16* @uPD98401_CHAN_ADDR, align 2
  %96 = zext i16 %95 to i32
  %97 = and i32 %94, %96
  %98 = load i16, i16* @uPD98401_CHAN_ADDR_SHIFT, align 2
  %99 = zext i16 %98 to i32
  %100 = ashr i32 %97, %99
  %101 = trunc i32 %100 to i16
  store i16 %101, i16* %7, align 2
  %102 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %103 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %102, i32 0, i32 0
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = load i16, i16* %7, align 2
  %107 = call i32 (i8*, i16, ...) @DPRINTK(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %106)
  %108 = load i16, i16* %7, align 2
  %109 = icmp ne i16 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %76
  %111 = load i32, i32* @EAGAIN, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %193

113:                                              ; preds = %76
  %114 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %115 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %118 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %117, i32 0, i32 1
  %119 = load i16, i16* %118, align 2
  %120 = call i32 @use_pool(i32 %116, i16 zeroext %119)
  %121 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %122 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %121, i32 0, i32 1
  %123 = load i16, i16* %122, align 2
  %124 = call i32 (i8*, i16, ...) @DPRINTK(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %123)
  %125 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %126 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %125, i32 0, i32 0
  %127 = load i64, i64* %6, align 8
  %128 = call i32 @spin_lock_irqsave(i32* %126, i64 %127)
  %129 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %130 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %131 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %130, i32 0, i32 1
  %132 = load i16, i16* %131, align 2
  %133 = zext i16 %132 to i32
  %134 = load i32, i32* @uPD98401_RXVC_POOL_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = load i16, i16* %7, align 2
  %137 = zext i16 %136 to i32
  %138 = load i16, i16* @VC_SIZE, align 2
  %139 = zext i16 %138 to i32
  %140 = mul nsw i32 %137, %139
  %141 = sdiv i32 %140, 4
  %142 = trunc i32 %141 to i16
  %143 = call i32 @zpokel(%struct.zatm_dev* %129, i32 %135, i16 zeroext %142)
  %144 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %145 = load i32, i32* @uPD98401_RXVC_OD, align 4
  %146 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %147 = getelementptr inbounds %struct.atm_vcc, %struct.atm_vcc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ATM_AAL5, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %113
  %153 = load i32, i32* @uPD98401_RXVC_AR, align 4
  br label %155

154:                                              ; preds = %113
  br label %155

155:                                              ; preds = %154, %152
  %156 = phi i32 [ %153, %152 ], [ 0, %154 ]
  %157 = or i32 %145, %156
  %158 = load i32, i32* %8, align 4
  %159 = or i32 %157, %158
  %160 = load i16, i16* %7, align 2
  %161 = zext i16 %160 to i32
  %162 = load i16, i16* @VC_SIZE, align 2
  %163 = zext i16 %162 to i32
  %164 = mul nsw i32 %161, %163
  %165 = sdiv i32 %164, 4
  %166 = add nsw i32 %165, 1
  %167 = trunc i32 %166 to i16
  %168 = call i32 @zpokel(%struct.zatm_dev* %144, i32 %159, i16 zeroext %167)
  %169 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %170 = load i16, i16* %7, align 2
  %171 = zext i16 %170 to i32
  %172 = load i16, i16* @VC_SIZE, align 2
  %173 = zext i16 %172 to i32
  %174 = mul nsw i32 %171, %173
  %175 = sdiv i32 %174, 4
  %176 = add nsw i32 %175, 2
  %177 = trunc i32 %176 to i16
  %178 = call i32 @zpokel(%struct.zatm_dev* %169, i32 0, i16 zeroext %177)
  %179 = load i16, i16* %7, align 2
  %180 = load %struct.zatm_vcc*, %struct.zatm_vcc** %5, align 8
  %181 = getelementptr inbounds %struct.zatm_vcc, %struct.zatm_vcc* %180, i32 0, i32 0
  store i16 %179, i16* %181, align 2
  %182 = load %struct.atm_vcc*, %struct.atm_vcc** %3, align 8
  %183 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %184 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %183, i32 0, i32 1
  %185 = load %struct.atm_vcc**, %struct.atm_vcc*** %184, align 8
  %186 = load i16, i16* %7, align 2
  %187 = zext i16 %186 to i64
  %188 = getelementptr inbounds %struct.atm_vcc*, %struct.atm_vcc** %185, i64 %187
  store %struct.atm_vcc* %182, %struct.atm_vcc** %188, align 8
  %189 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %190 = getelementptr inbounds %struct.zatm_dev, %struct.zatm_dev* %189, i32 0, i32 0
  %191 = load i64, i64* %6, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %155, %110, %73, %26
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @DPRINTK(i8*, i16 zeroext, ...) #1

declare dso_local zeroext i16 @inb_p(i32) #1

declare dso_local %struct.zatm_dev* @ZATM_DEV(i32) #1

declare dso_local %struct.zatm_vcc* @ZATM_VCC(%struct.atm_vcc*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local zeroext i16 @pool_index(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zout(i32, i32) #1

declare dso_local zeroext i16 @zin(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @use_pool(i32, i16 zeroext) #1

declare dso_local i32 @zpokel(%struct.zatm_dev*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
