; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_sa.c_sa_sync_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_sa.c_sa_sync_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32 }

@Mailbox0 = common dso_local global i32 0, align 4
@Mailbox1 = common dso_local global i32 0, align 4
@Mailbox2 = common dso_local global i32 0, align 4
@Mailbox3 = common dso_local global i32 0, align 4
@Mailbox4 = common dso_local global i32 0, align 4
@DoorbellClrReg_p = common dso_local global i32 0, align 4
@DOORBELL_0 = common dso_local global i32 0, align 4
@DoorbellReg_s = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@DoorbellReg_p = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_dev*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*)* @sa_sync_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa_sync_cmd(%struct.aac_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.aac_dev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32, align 4
  store %struct.aac_dev* %0, %struct.aac_dev** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32* %8, i32** %23, align 8
  store i32* %9, i32** %24, align 8
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32* %12, i32** %27, align 8
  %30 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %31 = load i32, i32* @Mailbox0, align 4
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @sa_writel(%struct.aac_dev* %30, i32 %31, i32 %32)
  %34 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %35 = load i32, i32* @Mailbox1, align 4
  %36 = load i32, i32* %17, align 4
  %37 = call i32 @sa_writel(%struct.aac_dev* %34, i32 %35, i32 %36)
  %38 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %39 = load i32, i32* @Mailbox2, align 4
  %40 = load i32, i32* %18, align 4
  %41 = call i32 @sa_writel(%struct.aac_dev* %38, i32 %39, i32 %40)
  %42 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %43 = load i32, i32* @Mailbox3, align 4
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @sa_writel(%struct.aac_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %47 = load i32, i32* @Mailbox4, align 4
  %48 = load i32, i32* %20, align 4
  %49 = call i32 @sa_writel(%struct.aac_dev* %46, i32 %47, i32 %48)
  %50 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %51 = load i32, i32* @DoorbellClrReg_p, align 4
  %52 = load i32, i32* @DOORBELL_0, align 4
  %53 = call i32 @sa_writew(%struct.aac_dev* %50, i32 %51, i32 %52)
  %54 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %55 = load i32, i32* @DoorbellReg_s, align 4
  %56 = load i32, i32* @DOORBELL_0, align 4
  %57 = call i32 @sa_writew(%struct.aac_dev* %54, i32 %55, i32 %56)
  store i32 0, i32* %29, align 4
  %58 = load i64, i64* @jiffies, align 8
  store i64 %58, i64* %28, align 8
  br label %59

59:                                               ; preds = %77, %13
  %60 = load i64, i64* @jiffies, align 8
  %61 = load i64, i64* %28, align 8
  %62 = load i32, i32* @HZ, align 4
  %63 = mul nsw i32 30, %62
  %64 = sext i32 %63 to i64
  %65 = add i64 %61, %64
  %66 = call i64 @time_before(i64 %60, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %59
  %69 = call i32 @udelay(i32 5)
  %70 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %71 = load i32, i32* @DoorbellReg_p, align 4
  %72 = call i32 @sa_readw(%struct.aac_dev* %70, i32 %71)
  %73 = load i32, i32* @DOORBELL_0, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  store i32 1, i32* %29, align 4
  br label %79

77:                                               ; preds = %68
  %78 = call i32 @msleep(i32 1)
  br label %59

79:                                               ; preds = %76, %59
  %80 = load i32, i32* %29, align 4
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32, i32* @ETIMEDOUT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %14, align 4
  br label %130

85:                                               ; preds = %79
  %86 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %87 = load i32, i32* @DoorbellClrReg_p, align 4
  %88 = load i32, i32* @DOORBELL_0, align 4
  %89 = call i32 @sa_writew(%struct.aac_dev* %86, i32 %87, i32 %88)
  %90 = load i32*, i32** %23, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %94 = load i32, i32* @Mailbox0, align 4
  %95 = call i32 @sa_readl(%struct.aac_dev* %93, i32 %94)
  %96 = load i32*, i32** %23, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %92, %85
  %98 = load i32*, i32** %24, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %105

100:                                              ; preds = %97
  %101 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %102 = load i32, i32* @Mailbox1, align 4
  %103 = call i32 @sa_readl(%struct.aac_dev* %101, i32 %102)
  %104 = load i32*, i32** %24, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32*, i32** %25, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %110 = load i32, i32* @Mailbox2, align 4
  %111 = call i32 @sa_readl(%struct.aac_dev* %109, i32 %110)
  %112 = load i32*, i32** %25, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %105
  %114 = load i32*, i32** %26, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %118 = load i32, i32* @Mailbox3, align 4
  %119 = call i32 @sa_readl(%struct.aac_dev* %117, i32 %118)
  %120 = load i32*, i32** %26, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %116, %113
  %122 = load i32*, i32** %27, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load %struct.aac_dev*, %struct.aac_dev** %15, align 8
  %126 = load i32, i32* @Mailbox4, align 4
  %127 = call i32 @sa_readl(%struct.aac_dev* %125, i32 %126)
  %128 = load i32*, i32** %27, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %124, %121
  store i32 0, i32* %14, align 4
  br label %130

130:                                              ; preds = %129, %82
  %131 = load i32, i32* %14, align 4
  ret i32 %131
}

declare dso_local i32 @sa_writel(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @sa_writew(%struct.aac_dev*, i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sa_readw(%struct.aac_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sa_readl(%struct.aac_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
