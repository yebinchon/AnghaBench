; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_block_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-ali1563.c_ali1563_block_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"Block (pre): STS=%02x, CNTL1=%02x, CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@SMB_HST_STS = common dso_local global i32 0, align 4
@SMB_HST_CNTL1 = common dso_local global i32 0, align 4
@SMB_HST_CNTL2 = common dso_local global i32 0, align 4
@SMB_HST_CMD = common dso_local global i32 0, align 4
@SMB_HST_ADD = common dso_local global i32 0, align 4
@SMB_HST_DAT0 = common dso_local global i32 0, align 4
@SMB_HST_DAT1 = common dso_local global i32 0, align 4
@HST_STS_BAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"ali1563: Trying to reset busy device\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@HST_STS_DONE = common dso_local global i32 0, align 4
@HST_CNTL2_START = common dso_local global i32 0, align 4
@ALI1563_MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [90 x i8] c"Block (post): STS=%02x, CNTL1=%02x, CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@HST_STS_DEVERR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"SMBus Error: %s%s%s%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Timeout \00", align 1
@HST_STS_FAIL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Transaction Failed \00", align 1
@HST_STS_BUSERR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"No response or Bus Collision \00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Device Error \00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Transaction Never Finished \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*)* @ali1563_block_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ali1563_block_start(%struct.i2c_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %3, align 8
  %7 = load i32, i32* @EIO, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* @SMB_HST_STS, align 4
  %12 = call i32 @inb_p(i32 %11)
  %13 = load i32, i32* @SMB_HST_CNTL1, align 4
  %14 = call i32 @inb_p(i32 %13)
  %15 = load i32, i32* @SMB_HST_CNTL2, align 4
  %16 = call i32 @inb_p(i32 %15)
  %17 = load i32, i32* @SMB_HST_CMD, align 4
  %18 = call i32 @inb_p(i32 %17)
  %19 = load i32, i32* @SMB_HST_ADD, align 4
  %20 = call i32 @inb_p(i32 %19)
  %21 = load i32, i32* @SMB_HST_DAT0, align 4
  %22 = call i32 @inb_p(i32 %21)
  %23 = load i32, i32* @SMB_HST_DAT1, align 4
  %24 = call i32 @inb_p(i32 %23)
  %25 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14, i32 %16, i32 %18, i32 %20, i32 %22, i32 %24)
  %26 = load i32, i32* @SMB_HST_STS, align 4
  %27 = call i32 @inb_p(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @HST_STS_BAD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %1
  %33 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %33, i32 0, i32 0
  %35 = call i32 @dev_warn(i32* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @HST_STS_BAD, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SMB_HST_STS, align 4
  %40 = call i32 @outb_p(i32 %38, i32 %39)
  %41 = load i32, i32* @SMB_HST_STS, align 4
  %42 = call i32 @inb_p(i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @HST_STS_BAD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %152

50:                                               ; preds = %32
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @HST_STS_DONE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SMB_HST_STS, align 4
  %56 = call i32 @outb_p(i32 %54, i32 %55)
  %57 = load i32, i32* @SMB_HST_CNTL2, align 4
  %58 = call i32 @inb_p(i32 %57)
  %59 = load i32, i32* @HST_CNTL2_START, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @SMB_HST_CNTL2, align 4
  %62 = call i32 @outb_p(i32 %60, i32 %61)
  %63 = load i32, i32* @ALI1563_MAX_TIMEOUT, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %76, %51
  %65 = call i32 @msleep(i32 1)
  br label %66

66:                                               ; preds = %64
  %67 = load i32, i32* @SMB_HST_STS, align 4
  %68 = call i32 @inb_p(i32 %67)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* @HST_STS_DONE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br label %76

76:                                               ; preds = %72, %66
  %77 = phi i1 [ false, %66 ], [ %75, %72 ]
  br i1 %77, label %64, label %78

78:                                               ; preds = %76
  %79 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* @SMB_HST_STS, align 4
  %82 = call i32 @inb_p(i32 %81)
  %83 = load i32, i32* @SMB_HST_CNTL1, align 4
  %84 = call i32 @inb_p(i32 %83)
  %85 = load i32, i32* @SMB_HST_CNTL2, align 4
  %86 = call i32 @inb_p(i32 %85)
  %87 = load i32, i32* @SMB_HST_CMD, align 4
  %88 = call i32 @inb_p(i32 %87)
  %89 = load i32, i32* @SMB_HST_ADD, align 4
  %90 = call i32 @inb_p(i32 %89)
  %91 = load i32, i32* @SMB_HST_DAT0, align 4
  %92 = call i32 @inb_p(i32 %91)
  %93 = load i32, i32* @SMB_HST_DAT1, align 4
  %94 = call i32 @inb_p(i32 %93)
  %95 = call i32 @dev_dbg(i32* %80, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %84, i32 %86, i32 %88, i32 %90, i32 %92, i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %78
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @HST_STS_BAD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %152

104:                                              ; preds = %98, %78
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* @ETIMEDOUT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @HST_STS_DEVERR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* @ENXIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %115, %110
  %119 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %119, i32 0, i32 0
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @HST_STS_FAIL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @HST_STS_BUSERR, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %137 = load i32, i32* %4, align 4
  %138 = load i32, i32* @HST_STS_DEVERR, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* @HST_STS_DONE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %150 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %124, i8* %130, i8* %136, i8* %142, i8* %149)
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %118, %103, %47
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
