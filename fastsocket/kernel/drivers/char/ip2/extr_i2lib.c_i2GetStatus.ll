; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2GetStatus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/ip2/extr_i2lib.c_i2GetStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i16, i32 }

@CHANN = common dso_local global i32 0, align 4
@ITRC_STATUS = common dso_local global i32 0, align 4
@ITRC_ENTER = common dso_local global i32 0, align 4
@I2_BRK = common dso_local global i32 0, align 4
@I2_PAR = common dso_local global i32 0, align 4
@I2_FRA = common dso_local global i32 0, align 4
@I2_OVR = common dso_local global i32 0, align 4
@I2_DDCD = common dso_local global i32 0, align 4
@I2_DCTS = common dso_local global i32 0, align 4
@I2_DDSR = common dso_local global i32 0, align 4
@I2_DRI = common dso_local global i32 0, align 4
@ITRC_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @i2GetStatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2GetStatus(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @CHANN, align 4
  %9 = load i32, i32* @ITRC_STATUS, align 4
  %10 = load i32, i32* @ITRC_ENTER, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 4
  %14 = zext i16 %13 to i32
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i32, i32, i32, i32, i32, ...) @ip2trace(i32 %8, i32 %9, i32 %10, i32 2, i32 %14, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = call i32 @i2Validate(%struct.TYPE_4__* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %72

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i16, i16* %26, align 4
  store i16 %27, i16* %6, align 2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @I2_BRK, align 4
  %33 = load i32, i32* @I2_PAR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @I2_FRA, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @I2_OVR, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %31, %38
  %40 = xor i32 %39, -1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i16, i16* %42, align 4
  %44 = zext i16 %43 to i32
  %45 = and i32 %44, %40
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %42, align 4
  %47 = load i32, i32* @I2_DDCD, align 4
  %48 = load i32, i32* @I2_DCTS, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @I2_DDSR, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @I2_DRI, align 4
  %53 = or i32 %51, %52
  %54 = xor i32 %53, -1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i16, i16* %56, align 4
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, %54
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %56, align 4
  br label %61

61:                                               ; preds = %30, %21
  %62 = load i32, i32* @CHANN, align 4
  %63 = load i32, i32* @ITRC_STATUS, align 4
  %64 = load i32, i32* @ITRC_RETURN, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i16, i16* %66, align 4
  %68 = zext i16 %67 to i32
  %69 = call i32 (i32, i32, i32, i32, i32, ...) @ip2trace(i32 %62, i32 %63, i32 %64, i32 1, i32 %68)
  %70 = load i16, i16* %6, align 2
  %71 = zext i16 %70 to i32
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %61, %20
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ip2trace(i32, i32, i32, i32, i32, ...) #1

declare dso_local i32 @i2Validate(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
