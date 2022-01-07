; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_libps2.c_ps2_handle_ack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_libps2.c_ps2_handle_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2dev = type { i32, i32, i32, i64 }

@PS2_FLAG_NAK = common dso_local global i32 0, align 4
@PS2_FLAG_WAITID = common dso_local global i32 0, align 4
@PS2_FLAG_CMD = common dso_local global i32 0, align 4
@PS2_FLAG_CMD1 = common dso_local global i32 0, align 4
@PS2_FLAG_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ps2_handle_ack(%struct.ps2dev* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca i8, align 1
  store %struct.ps2dev* %0, %struct.ps2dev** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  switch i32 %7, label %47 [
    i32 130, label %8
    i32 128, label %11
    i32 129, label %19
    i32 0, label %36
    i32 3, label %36
    i32 4, label %36
  ]

8:                                                ; preds = %2
  %9 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %10 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  br label %48

11:                                               ; preds = %2
  %12 = load i32, i32* @PS2_FLAG_NAK, align 4
  %13 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %14 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %18 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %17, i32 0, i32 0
  store i32 128, i32* %18, align 8
  br label %48

19:                                               ; preds = %2
  %20 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %21 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PS2_FLAG_NAK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load i32, i32* @PS2_FLAG_NAK, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %30 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %34 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %33, i32 0, i32 0
  store i32 129, i32* %34, align 8
  br label %48

35:                                               ; preds = %19
  br label %36

36:                                               ; preds = %2, %2, %2, %35
  %37 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %38 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PS2_FLAG_WAITID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %45 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  br label %48

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %2, %46
  store i32 0, i32* %3, align 4
  br label %91

48:                                               ; preds = %43, %26, %11, %8
  %49 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %50 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %73, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @PS2_FLAG_NAK, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %57 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %61 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %53
  %65 = load i32, i32* @PS2_FLAG_CMD, align 4
  %66 = load i32, i32* @PS2_FLAG_CMD1, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %69 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %64, %53
  br label %73

73:                                               ; preds = %72, %48
  %74 = load i32, i32* @PS2_FLAG_ACK, align 4
  %75 = xor i32 %74, -1
  %76 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %77 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %75
  store i32 %79, i32* %77, align 4
  %80 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %81 = getelementptr inbounds %struct.ps2dev, %struct.ps2dev* %80, i32 0, i32 2
  %82 = call i32 @wake_up(i32* %81)
  %83 = load i8, i8* %5, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %84, 130
  br i1 %85, label %86, label %90

86:                                               ; preds = %73
  %87 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %88 = load i8, i8* %5, align 1
  %89 = call i32 @ps2_handle_response(%struct.ps2dev* %87, i8 zeroext %88)
  br label %90

90:                                               ; preds = %86, %73
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %47
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @ps2_handle_response(%struct.ps2dev*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
