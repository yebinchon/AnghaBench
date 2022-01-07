; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_sa.c_aac_sa_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_sa.c_aac_sa_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.aac_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@DoorbellReg_p = common dso_local global i32 0, align 4
@SaDbCSR = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PrintfReady = common dso_local global i16 0, align 2
@Mailbox5 = common dso_local global i32 0, align 4
@DoorbellClrReg_p = common dso_local global i32 0, align 4
@DoorbellReg_s = common dso_local global i32 0, align 4
@PrintfDone = common dso_local global i16 0, align 2
@DOORBELL_1 = common dso_local global i16 0, align 2
@HostNormCmdQueue = common dso_local global i64 0, align 8
@DOORBELL_2 = common dso_local global i16 0, align 2
@HostNormRespQueue = common dso_local global i64 0, align 8
@DOORBELL_3 = common dso_local global i16 0, align 2
@DOORBELL_4 = common dso_local global i16 0, align 2
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @aac_sa_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_sa_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aac_dev*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.aac_dev*
  store %struct.aac_dev* %10, %struct.aac_dev** %6, align 8
  %11 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %12 = load i32, i32* @DoorbellReg_p, align 4
  %13 = call zeroext i16 @sa_readw(%struct.aac_dev* %11, i32 %12)
  store i16 %13, i16* %7, align 2
  %14 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SaDbCSR, i32 0, i32 0), align 4
  %16 = call zeroext i16 @sa_readw(%struct.aac_dev* %14, i32 %15)
  %17 = zext i16 %16 to i32
  %18 = xor i32 %17, -1
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %8, align 2
  %20 = load i16, i16* %7, align 2
  %21 = zext i16 %20 to i32
  %22 = load i16, i16* %8, align 2
  %23 = zext i16 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %117

26:                                               ; preds = %2
  %27 = load i16, i16* %7, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @PrintfReady, align 2
  %30 = zext i16 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %35 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %36 = load i32, i32* @Mailbox5, align 4
  %37 = call i32 @sa_readl(%struct.aac_dev* %35, i32 %36)
  %38 = call i32 @aac_printf(%struct.aac_dev* %34, i32 %37)
  %39 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %40 = load i32, i32* @DoorbellClrReg_p, align 4
  %41 = load i16, i16* @PrintfReady, align 2
  %42 = call i32 @sa_writew(%struct.aac_dev* %39, i32 %40, i16 zeroext %41)
  %43 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %44 = load i32, i32* @DoorbellReg_s, align 4
  %45 = load i16, i16* @PrintfDone, align 2
  %46 = call i32 @sa_writew(%struct.aac_dev* %43, i32 %44, i16 zeroext %45)
  br label %115

47:                                               ; preds = %26
  %48 = load i16, i16* %7, align 2
  %49 = zext i16 %48 to i32
  %50 = load i16, i16* @DOORBELL_1, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %47
  %55 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %56 = load i32, i32* @DoorbellClrReg_p, align 4
  %57 = load i16, i16* @DOORBELL_1, align 2
  %58 = call i32 @sa_writew(%struct.aac_dev* %55, i32 %56, i16 zeroext %57)
  %59 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %60 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @HostNormCmdQueue, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = call i32 @aac_command_normal(i32* %65)
  br label %114

67:                                               ; preds = %47
  %68 = load i16, i16* %7, align 2
  %69 = zext i16 %68 to i32
  %70 = load i16, i16* @DOORBELL_2, align 2
  %71 = zext i16 %70 to i32
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %87

74:                                               ; preds = %67
  %75 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %76 = load i32, i32* @DoorbellClrReg_p, align 4
  %77 = load i16, i16* @DOORBELL_2, align 2
  %78 = call i32 @sa_writew(%struct.aac_dev* %75, i32 %76, i16 zeroext %77)
  %79 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %80 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @HostNormRespQueue, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = call i32 @aac_response_normal(i32* %85)
  br label %113

87:                                               ; preds = %67
  %88 = load i16, i16* %7, align 2
  %89 = zext i16 %88 to i32
  %90 = load i16, i16* @DOORBELL_3, align 2
  %91 = zext i16 %90 to i32
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %96 = load i32, i32* @DoorbellClrReg_p, align 4
  %97 = load i16, i16* @DOORBELL_3, align 2
  %98 = call i32 @sa_writew(%struct.aac_dev* %95, i32 %96, i16 zeroext %97)
  br label %112

99:                                               ; preds = %87
  %100 = load i16, i16* %7, align 2
  %101 = zext i16 %100 to i32
  %102 = load i16, i16* @DOORBELL_4, align 2
  %103 = zext i16 %102 to i32
  %104 = and i32 %101, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %99
  %107 = load %struct.aac_dev*, %struct.aac_dev** %6, align 8
  %108 = load i32, i32* @DoorbellClrReg_p, align 4
  %109 = load i16, i16* @DOORBELL_4, align 2
  %110 = call i32 @sa_writew(%struct.aac_dev* %107, i32 %108, i16 zeroext %109)
  br label %111

111:                                              ; preds = %106, %99
  br label %112

112:                                              ; preds = %111, %94
  br label %113

113:                                              ; preds = %112, %74
  br label %114

114:                                              ; preds = %113, %54
  br label %115

115:                                              ; preds = %114, %33
  %116 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %116, i32* %3, align 4
  br label %119

117:                                              ; preds = %2
  %118 = load i32, i32* @IRQ_NONE, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local zeroext i16 @sa_readw(%struct.aac_dev*, i32) #1

declare dso_local i32 @aac_printf(%struct.aac_dev*, i32) #1

declare dso_local i32 @sa_readl(%struct.aac_dev*, i32) #1

declare dso_local i32 @sa_writew(%struct.aac_dev*, i32, i16 zeroext) #1

declare dso_local i32 @aac_command_normal(i32*) #1

declare dso_local i32 @aac_response_normal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
