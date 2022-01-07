; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_hint_board.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-cards.c_em28xx_hint_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.em28xx = type { i64, i64, i64, i32 }

@em28xx_eeprom_hash = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [34 x i8] c"Your board has no unique USB ID.\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"A hint were successfully done, based on eeprom hash.\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"This method is not 100%% failproof.\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"If the board were missdetected, please email this log to:\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"\09V4L Mailing List  <linux-media@vger.kernel.org>\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Board detected as %s\0A\00", align 1
@em28xx_boards = common dso_local global %struct.TYPE_6__* null, align 8
@em28xx_i2c_hash = common dso_local global %struct.TYPE_5__* null, align 8
@.str.6 = private unnamed_addr constant [62 x i8] c"A hint were successfully done, based on i2c devicelist hash.\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Your board has no unique USB ID and thus need a hint to be detected.\0A\00", align 1
@.str.8 = private unnamed_addr constant [63 x i8] c"You may try to use card=<n> insmod option to workaround that.\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Please send an email with this log to:\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"\09V4L Mailing List <linux-media@vger.kernel.org>\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"Board eeprom hash is 0x%08lx\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Board i2c devicelist hash is 0x%08lx\0A\00", align 1
@.str.13 = private unnamed_addr constant [65 x i8] c"Here is a list of valid choices for the card=<n> insmod option:\0A\00", align 1
@em28xx_bcount = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"    card=%d -> %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_hint_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_hint_board(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %52, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @em28xx_eeprom_hash, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %7)
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %5
  %11 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @em28xx_eeprom_hash, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %13, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %10
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @em28xx_eeprom_hash, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %29 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @em28xx_eeprom_hash, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %37 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %39 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %40 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %41 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @em28xx_boards, align 8
  %44 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %45 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %49)
  store i32 0, i32* %2, align 4
  br label %145

51:                                               ; preds = %10
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %5

55:                                               ; preds = %5
  %56 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %57 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %62 = call i32 @em28xx_do_i2c_scan(%struct.em28xx* %61)
  br label %63

63:                                               ; preds = %60, %55
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %111, %63
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @em28xx_i2c_hash, align 8
  %67 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %66)
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %114

69:                                               ; preds = %64
  %70 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %71 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @em28xx_i2c_hash, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %72, %78
  br i1 %79, label %80, label %110

80:                                               ; preds = %69
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** @em28xx_i2c_hash, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %88 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** @em28xx_i2c_hash, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %96 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %98 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  %99 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %100 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0))
  %101 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** @em28xx_boards, align 8
  %103 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %104 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  store i32 0, i32* %2, align 4
  br label %145

110:                                              ; preds = %69
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %64

114:                                              ; preds = %64
  %115 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0))
  %116 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %117 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %118 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %119 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %120 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i64 %121)
  %123 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %124 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0), i64 %125)
  %127 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %141, %114
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @em28xx_bcount, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %128
  %133 = load i32, i32* %4, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** @em28xx_boards, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (i8*, ...) @em28xx_errdev(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %133, i32 %139)
  br label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  br label %128

144:                                              ; preds = %128
  store i32 -1, i32* %2, align 4
  br label %145

145:                                              ; preds = %144, %80, %21
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @em28xx_errdev(i8*, ...) #1

declare dso_local i32 @em28xx_do_i2c_scan(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
