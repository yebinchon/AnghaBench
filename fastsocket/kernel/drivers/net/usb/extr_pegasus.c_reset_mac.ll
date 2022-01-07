; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_pegasus.c_reset_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_pegasus.c_reset_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i64 }

@EthCtrl1 = common dso_local global i32 0, align 4
@REG_TIMEOUT = common dso_local global i32 0, align 4
@loopback = common dso_local global i32 0, align 4
@mii_mode = common dso_local global i64 0, align 8
@HAS_HOME_PNA = common dso_local global i32 0, align 4
@Gpio1 = common dso_local global i32 0, align 4
@Gpio0 = common dso_local global i32 0, align 4
@DEFAULT_GPIO_SET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@usb_dev_id = common dso_local global %struct.TYPE_9__* null, align 8
@VENDOR_LINKSYS = common dso_local global i64 0, align 8
@VENDOR_DLINK = common dso_local global i64 0, align 8
@VENDOR_ELCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @reset_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_mac(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 8, i32* %4, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = load i32, i32* @EthCtrl1, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @set_register(%struct.TYPE_8__* %7, i32 %8, i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %58, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @REG_TIMEOUT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = load i32, i32* @EthCtrl1, align 4
  %18 = call i32 @get_registers(%struct.TYPE_8__* %16, i32 %17, i32 1, i32* %4)
  %19 = load i32, i32* %4, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %57

23:                                               ; preds = %15
  %24 = load i32, i32* @loopback, align 4
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %61

28:                                               ; preds = %23
  %29 = load i64, i64* @mii_mode, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HAS_HOME_PNA, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = load i32, i32* @Gpio1, align 4
  %41 = call i32 @set_register(%struct.TYPE_8__* %39, i32 %40, i32 52)
  br label %46

42:                                               ; preds = %31, %28
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = load i32, i32* @Gpio1, align 4
  %45 = call i32 @set_register(%struct.TYPE_8__* %43, i32 %44, i32 38)
  br label %46

46:                                               ; preds = %42, %38
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = load i32, i32* @Gpio0, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @set_register(%struct.TYPE_8__* %47, i32 %48, i32 %51)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = load i32, i32* @Gpio0, align 4
  %55 = load i32, i32* @DEFAULT_GPIO_SET, align 4
  %56 = call i32 @set_register(%struct.TYPE_8__* %53, i32 %54, i32 %55)
  br label %61

57:                                               ; preds = %15
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %11

61:                                               ; preds = %46, %27, %11
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @REG_TIMEOUT, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @ETIMEDOUT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %113

68:                                               ; preds = %61
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** @usb_dev_id, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @VENDOR_LINKSYS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %68
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** @usb_dev_id, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @VENDOR_DLINK, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %78, %68
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %90 = load i32, i32* @Gpio0, align 4
  %91 = call i32 @set_register(%struct.TYPE_8__* %89, i32 %90, i32 36)
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %93 = load i32, i32* @Gpio0, align 4
  %94 = call i32 @set_register(%struct.TYPE_8__* %92, i32 %93, i32 38)
  br label %95

95:                                               ; preds = %88, %78
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @usb_dev_id, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @VENDOR_ELCON, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %95
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = call i32 @read_mii_word(%struct.TYPE_8__* %106, i32 3, i32 27, i32* %6)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, 4
  %111 = call i32 @write_mii_word(%struct.TYPE_8__* %108, i32 3, i32 27, i32 %110)
  br label %112

112:                                              ; preds = %105, %95
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %65
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @set_register(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @get_registers(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @read_mii_word(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @write_mii_word(%struct.TYPE_8__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
