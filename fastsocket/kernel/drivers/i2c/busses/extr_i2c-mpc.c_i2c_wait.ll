; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mpc.c_i2c_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-mpc.c_i2c_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc_i2c = type { i64, i32, i32, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@NO_IRQ = common dso_local global i64 0, align 8
@MPC_I2C_SR = common dso_local global i64 0, align 8
@CSR_MIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"wait timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@CSR_MCF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"unfinished\0A\00", align 1
@CSR_MAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"MAL\0A\00", align 1
@CSR_RXAK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"No RXAK\0A\00", align 1
@CCR_MEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc_i2c*, i32, i32)* @i2c_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_wait(%struct.mpc_i2c* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc_i2c*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mpc_i2c* %0, %struct.mpc_i2c** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %13 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NO_IRQ, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %48, %17
  %19 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %20 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MPC_I2C_SR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readb(i64 %23)
  %25 = load i32, i32* @CSR_MIF, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %49

29:                                               ; preds = %18
  %30 = call i32 (...) @schedule()
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = add i64 %32, %34
  %36 = trunc i64 %35 to i32
  %37 = call i64 @time_after(i64 %31, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %41 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %45 = call i32 @writeccr(%struct.mpc_i2c* %44, i32 0)
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  br label %49

48:                                               ; preds = %29
  br label %18

49:                                               ; preds = %39, %18
  %50 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %51 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MPC_I2C_SR, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readb(i64 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %57 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MPC_I2C_SR, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @writeb(i32 0, i64 %60)
  br label %98

62:                                               ; preds = %3
  %63 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %64 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %67 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CSR_MIF, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @wait_event_timeout(i32 %65, i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %74 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CSR_MIF, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %62
  %84 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %85 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %89 = call i32 @writeccr(%struct.mpc_i2c* %88, i32 0)
  %90 = load i32, i32* @ETIMEDOUT, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %83, %62
  %93 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %94 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %9, align 4
  %96 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %97 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %96, i32 0, i32 1
  store i32 0, i32* %97, align 8
  br label %98

98:                                               ; preds = %92, %49
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %146

103:                                              ; preds = %98
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* @CSR_MCF, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %115, label %108

108:                                              ; preds = %103
  %109 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %110 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %146

115:                                              ; preds = %103
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @CSR_MAL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %122 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @dev_dbg(i32 %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @EIO, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %4, align 4
  br label %146

127:                                              ; preds = %115
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @CSR_RXAK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %137 = getelementptr inbounds %struct.mpc_i2c, %struct.mpc_i2c* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @dev_dbg(i32 %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %140 = load %struct.mpc_i2c*, %struct.mpc_i2c** %5, align 8
  %141 = load i32, i32* @CCR_MEN, align 4
  %142 = call i32 @writeccr(%struct.mpc_i2c* %140, i32 %141)
  %143 = load i32, i32* @EIO, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %4, align 4
  br label %146

145:                                              ; preds = %130, %127
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %145, %135, %120, %108, %101
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i64 @time_after(i64, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @writeccr(%struct.mpc_i2c*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
