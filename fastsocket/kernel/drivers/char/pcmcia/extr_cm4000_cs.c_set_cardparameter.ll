; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_cm4000_cs.c_set_cardparameter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_cm4000_cs.c_set_cardparameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8, i32, i32 }
%struct.cm4000_dev = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"-> set_cardparameter\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"flags1 = 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"baudv = %i -> write 0x%02x\0A\00", align 1
@card_fixups = common dso_local global %struct.TYPE_7__* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"<- set_cardparameter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cm4000_dev*)* @set_cardparameter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cardparameter(%struct.cm4000_dev* %0) #0 {
  %2 = alloca %struct.cm4000_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.cm4000_dev* %0, %struct.cm4000_dev** %2, align 8
  %6 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %7 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  store i8 2, i8* %5, align 1
  %12 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %13 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 3, %struct.cm4000_dev* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %15 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %18 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = and i32 %20, 256
  %22 = ashr i32 %21, 8
  %23 = or i32 %16, %22
  %24 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %25 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %27 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @REG_FLAGS1(i32 %30)
  %32 = call i32 @xoutb(i8 zeroext %29, i32 %31)
  %33 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %34 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %35 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %39 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %41, 255
  %43 = trunc i32 %42 to i8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @REG_BAUDRATE(i32 %44)
  %46 = call i32 @xoutb(i8 zeroext %43, i32 %45)
  %47 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %48 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %49 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %52 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %54, 255
  %56 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 5, %struct.cm4000_dev* %47, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %50, i32 %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %88, %1
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @card_fixups, align 8
  %60 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %64 = getelementptr inbounds %struct.cm4000_dev, %struct.cm4000_dev* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** @card_fixups, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** @card_fixups, align 8
  %73 = load i32, i32* %3, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @memcmp(i32 %65, i32 %71, i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %62
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** @card_fixups, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 4
  store i8 %86, i8* %5, align 1
  br label %87

87:                                               ; preds = %80, %62
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %3, align 4
  br label %57

91:                                               ; preds = %57
  %92 = load i8, i8* %5, align 1
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @REG_STOPBITS(i32 %93)
  %95 = call i32 @xoutb(i8 zeroext %92, i32 %94)
  %96 = load %struct.cm4000_dev*, %struct.cm4000_dev** %2, align 8
  %97 = call i32 (i32, %struct.cm4000_dev*, i8*, ...) @DEBUGP(i32 3, %struct.cm4000_dev* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DEBUGP(i32, %struct.cm4000_dev*, i8*, ...) #1

declare dso_local i32 @xoutb(i8 zeroext, i32) #1

declare dso_local i32 @REG_FLAGS1(i32) #1

declare dso_local i32 @REG_BAUDRATE(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @REG_STOPBITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
