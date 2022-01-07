; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-viapro.c_vt596_transaction.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-viapro.c_vt596_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"Transaction (pre)\00", align 1
@SMBHSTSTS = common dso_local global i32 0, align 4
@vt596_adapter = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"SMBus busy (0x%02x). Resetting...\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"SMBus reset failed! (0x%02x)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@SMBHSTCNT = common dso_local global i32 0, align 4
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"SMBus timeout!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Transaction failed (0x%02x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SMBus collision!\0A\00", align 1
@SMBHSTADD = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VT596_QUICK = common dso_local global i32 0, align 4
@VT596_BYTE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Transaction error!\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Transaction (post)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vt596_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt596_transaction(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @vt596_dump_regs(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* @SMBHSTSTS, align 4
  %11 = call i32 @inb_p(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = and i32 %11, 31
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dev_dbg(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SMBHSTSTS, align 4
  %19 = call i32 @outb_p(i32 %17, i32 %18)
  %20 = load i32, i32* @SMBHSTSTS, align 4
  %21 = call i32 @inb_p(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = and i32 %21, 31
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %113

29:                                               ; preds = %14
  br label %30

30:                                               ; preds = %29, %1
  %31 = load i32, i32* %3, align 4
  %32 = or i32 64, %31
  %33 = load i32, i32* @SMBHSTCNT, align 4
  %34 = call i32 @outb_p(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %48, %30
  %36 = call i32 @msleep(i32 1)
  %37 = load i32, i32* @SMBHSTSTS, align 4
  %38 = call i32 @inb_p(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @MAX_TIMEOUT, align 4
  %47 = icmp slt i32 %44, %46
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i1 [ false, %39 ], [ %47, %43 ]
  br i1 %49, label %35, label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MAX_TIMEOUT, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @ETIMEDOUT, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %58

58:                                               ; preds = %54, %50
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 16
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %58
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %3, align 4
  %66 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  %74 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %75
  %80 = load i32, i32* @SMBHSTADD, align 4
  %81 = call i32 @inb_p(i32 %80)
  %82 = and i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* @ENXIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @VT596_QUICK, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %88, %79
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @VT596_BYTE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95, %91
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vt596_adapter, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95, %88
  br label %101

101:                                              ; preds = %100, %75
  %102 = load i32, i32* %4, align 4
  %103 = and i32 %102, 31
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* %4, align 4
  %107 = load i32, i32* @SMBHSTSTS, align 4
  %108 = call i32 @outb_p(i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @vt596_dump_regs(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* %5, align 4
  store i32 %112, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %24
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @vt596_dump_regs(i8*, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
