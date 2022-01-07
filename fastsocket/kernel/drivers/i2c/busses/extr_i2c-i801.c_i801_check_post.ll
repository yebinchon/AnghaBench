; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_check_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-i801.c_i801_check_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i801_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Transaction timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Terminating the current operation\0A\00", align 1
@SMBHSTCNT_KILL = common dso_local global i32 0, align 4
@SMBHSTSTS_HOST_BUSY = common dso_local global i32 0, align 4
@SMBHSTSTS_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed terminating the transaction\0A\00", align 1
@STATUS_FLAGS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Transaction failed\0A\00", align 1
@SMBHSTSTS_DEV_ERR = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"No response\0A\00", align 1
@SMBHSTSTS_BUS_ERR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"Lost arbitration\0A\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Failed clearing status flags at end of transaction (%02x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i801_priv*, i32, i32)* @i801_check_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i801_check_post(%struct.i801_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i801_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i801_priv* %0, %struct.i801_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %65

11:                                               ; preds = %3
  %12 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %13 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %18 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %23 = call i32 @SMBHSTCNT(%struct.i801_priv* %22)
  %24 = call i32 @inb_p(i32 %23)
  %25 = load i32, i32* @SMBHSTCNT_KILL, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %28 = call i32 @SMBHSTCNT(%struct.i801_priv* %27)
  %29 = call i32 @outb_p(i32 %26, i32 %28)
  %30 = call i32 @msleep(i32 1)
  %31 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %32 = call i32 @SMBHSTCNT(%struct.i801_priv* %31)
  %33 = call i32 @inb_p(i32 %32)
  %34 = load i32, i32* @SMBHSTCNT_KILL, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %38 = call i32 @SMBHSTCNT(%struct.i801_priv* %37)
  %39 = call i32 @outb_p(i32 %36, i32 %38)
  %40 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %41 = call i32 @SMBHSTSTS(%struct.i801_priv* %40)
  %42 = call i32 @inb_p(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @SMBHSTSTS_HOST_BUSY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %11
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SMBHSTSTS_FAILED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %47, %11
  %53 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %54 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %58

58:                                               ; preds = %52, %47
  %59 = load i32, i32* @STATUS_FLAGS, align 4
  %60 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %61 = call i32 @SMBHSTSTS(%struct.i801_priv* %60)
  %62 = call i32 @outb_p(i32 %59, i32 %61)
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %131

65:                                               ; preds = %3
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @SMBHSTSTS_FAILED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  %73 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %74 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %70, %65
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @SMBHSTSTS_DEV_ERR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, i32* @ENXIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %8, align 4
  %86 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %87 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @dev_dbg(i32* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %91

91:                                               ; preds = %83, %78
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @SMBHSTSTS_BUS_ERR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load i32, i32* @EAGAIN, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %8, align 4
  %99 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %100 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @dev_dbg(i32* %102, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %96, %91
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @STATUS_FLAGS, align 4
  %110 = and i32 %108, %109
  %111 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %112 = call i32 @SMBHSTSTS(%struct.i801_priv* %111)
  %113 = call i32 @outb_p(i32 %110, i32 %112)
  %114 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %115 = call i32 @SMBHSTSTS(%struct.i801_priv* %114)
  %116 = call i32 @inb_p(i32 %115)
  %117 = load i32, i32* @STATUS_FLAGS, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %107
  %122 = load %struct.i801_priv*, %struct.i801_priv** %5, align 8
  %123 = getelementptr inbounds %struct.i801_priv, %struct.i801_priv* %122, i32 0, i32 0
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @dev_warn(i32* %125, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %121, %107
  br label %129

129:                                              ; preds = %128, %104
  %130 = load i32, i32* %8, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %58
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @outb_p(i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @SMBHSTCNT(%struct.i801_priv*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @SMBHSTSTS(%struct.i801_priv*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
