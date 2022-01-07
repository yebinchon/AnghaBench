; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-isch.c_sch_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-isch.c_sch_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@sch_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [71 x i8] c"Transaction (pre): CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@SMBHSTCNT = common dso_local global i32 0, align 4
@SMBHSTCMD = common dso_local global i32 0, align 4
@SMBHSTADD = common dso_local global i32 0, align 4
@SMBHSTDAT0 = common dso_local global i32 0, align 4
@SMBHSTDAT1 = common dso_local global i32 0, align 4
@SMBHSTSTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Completion (%02x). Clear...\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"SMBus error (%02x). Resetting...\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"SMBus is not ready: (%02x)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"SMBus Timeout!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"Bus collision! SMBus may be locked until next hard reset. (sorry!)\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Error: no response!\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Post complete!\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"Failed reset at end of transaction (%02x), Bus error!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"No such address.\0A\00", align 1
@.str.10 = private unnamed_addr constant [72 x i8] c"Transaction (post): CNT=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @sch_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sch_transaction() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @SMBHSTCNT, align 4
  %6 = call i32 @inb(i32 %5)
  %7 = load i32, i32* @SMBHSTCMD, align 4
  %8 = call i32 @inb(i32 %7)
  %9 = load i32, i32* @SMBHSTADD, align 4
  %10 = call i32 @inb(i32 %9)
  %11 = load i32, i32* @SMBHSTDAT0, align 4
  %12 = call i32 @inb(i32 %11)
  %13 = load i32, i32* @SMBHSTDAT1, align 4
  %14 = call i32 @inb(i32 %13)
  %15 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %8, i32 %10, i32 %12, i32 %14)
  %16 = load i32, i32* @SMBHSTSTS, align 4
  %17 = call i32 @inb(i32 %16)
  %18 = and i32 %17, 15
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %50

21:                                               ; preds = %0
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %2, align 4
  %30 = and i32 %29, 6
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %28
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @SMBHSTSTS, align 4
  %38 = call i32 @outb(i32 %36, i32 %37)
  %39 = load i32, i32* @SMBHSTSTS, align 4
  %40 = call i32 @inb(i32 %39)
  %41 = and i32 %40, 15
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load i32, i32* %2, align 4
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EAGAIN, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %1, align 4
  br label %134

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %0
  %51 = load i32, i32* @SMBHSTCNT, align 4
  %52 = call i32 @inb(i32 %51)
  %53 = or i32 %52, 16
  %54 = load i32, i32* @SMBHSTCNT, align 4
  %55 = call i32 @outb(i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %70, %50
  %57 = call i32 @msleep(i32 1)
  %58 = load i32, i32* @SMBHSTSTS, align 4
  %59 = call i32 @inb(i32 %58)
  %60 = and i32 %59, 15
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %2, align 4
  %63 = and i32 %62, 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @MAX_TIMEOUT, align 4
  %69 = icmp slt i32 %66, %68
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i1 [ false, %61 ], [ %69, %65 ]
  br i1 %71, label %56, label %72

72:                                               ; preds = %70
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @MAX_TIMEOUT, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %2, align 4
  %82 = and i32 %81, 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  %87 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  br label %121

88:                                               ; preds = %80
  %89 = load i32, i32* %2, align 4
  %90 = and i32 %89, 2
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  %95 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %120

96:                                               ; preds = %88
  %97 = load i32, i32* %2, align 4
  %98 = and i32 %97, 1
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %96
  %101 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @SMBHSTSTS, align 4
  %104 = call i32 @outb(i32 %102, i32 %103)
  %105 = load i32, i32* @SMBHSTSTS, align 4
  %106 = call i32 @inb(i32 %105)
  %107 = and i32 %106, 7
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = and i32 %108, 6
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load i32, i32* %2, align 4
  %113 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %111, %100
  br label %119

115:                                              ; preds = %96
  %116 = load i32, i32* @ENXIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %3, align 4
  %118 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  br label %119

119:                                              ; preds = %115, %114
  br label %120

120:                                              ; preds = %119, %92
  br label %121

121:                                              ; preds = %120, %84
  %122 = load i32, i32* @SMBHSTCNT, align 4
  %123 = call i32 @inb(i32 %122)
  %124 = load i32, i32* @SMBHSTCMD, align 4
  %125 = call i32 @inb(i32 %124)
  %126 = load i32, i32* @SMBHSTADD, align 4
  %127 = call i32 @inb(i32 %126)
  %128 = load i32, i32* @SMBHSTDAT0, align 4
  %129 = call i32 @inb(i32 %128)
  %130 = load i32, i32* @SMBHSTDAT1, align 4
  %131 = call i32 @inb(i32 %130)
  %132 = call i32 (i32*, i8*, ...) @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sch_adapter, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.10, i64 0, i64 0), i32 %123, i32 %125, i32 %127, i32 %129, i32 %131)
  %133 = load i32, i32* %3, align 4
  store i32 %133, i32* %1, align 4
  br label %134

134:                                              ; preds = %121, %44
  %135 = load i32, i32* %1, align 4
  ret i32 %135
}

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
