; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_rtc_m41t81.c_m41t81_set_time.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/sibyte/swarm/extr_rtc_m41t81.c_m41t81_set_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32 }

@rtc_lock = common dso_local global i32 0, align 4
@M41T81REG_SC = common dso_local global i32 0, align 4
@M41T81REG_MN = common dso_local global i32 0, align 4
@M41T81REG_HR = common dso_local global i32 0, align 4
@M41T81REG_DY = common dso_local global i32 0, align 4
@M41T81REG_DT = common dso_local global i32 0, align 4
@M41T81REG_MO = common dso_local global i32 0, align 4
@M41T81REG_YR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m41t81_set_time(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.rtc_time, align 4
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i32 @rtc_time_to_tm(i64 %5, %struct.rtc_time* %3)
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %7)
  %9 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @bin2bcd(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @M41T81REG_SC, align 4
  %15 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @m41t81_write(i32 %14, i32 %16)
  %18 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @bin2bcd(i32 %19)
  %21 = ptrtoint i8* %20 to i32
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @M41T81REG_MN, align 4
  %24 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @m41t81_write(i32 %23, i32 %25)
  %27 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @bin2bcd(i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 63
  %35 = load i32, i32* @M41T81REG_HR, align 4
  %36 = call i32 @m41t81_read(i32 %35)
  %37 = and i32 %36, 192
  %38 = or i32 %34, %37
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @M41T81REG_HR, align 4
  %41 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @m41t81_write(i32 %40, i32 %42)
  %44 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %1
  %48 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 3
  store i32 7, i32* %48, align 4
  br label %49

49:                                               ; preds = %47, %1
  %50 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @bin2bcd(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 3
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* @M41T81REG_DY, align 4
  %56 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @m41t81_write(i32 %55, i32 %57)
  %59 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @bin2bcd(i32 %60)
  %62 = ptrtoint i8* %61 to i32
  %63 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 4
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* @M41T81REG_DT, align 4
  %65 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @m41t81_write(i32 %64, i32 %66)
  %68 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @bin2bcd(i32 %72)
  %74 = ptrtoint i8* %73 to i32
  %75 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* @M41T81REG_MO, align 4
  %77 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @m41t81_write(i32 %76, i32 %78)
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = srem i32 %81, 100
  store i32 %82, i32* %80, align 4
  %83 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @bin2bcd(i32 %84)
  %86 = ptrtoint i8* %85 to i32
  %87 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 6
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* @M41T81REG_YR, align 4
  %89 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %3, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @m41t81_write(i32 %88, i32 %90)
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %92)
  ret i32 0
}

declare dso_local i32 @rtc_time_to_tm(i64, %struct.rtc_time*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @bin2bcd(i32) #1

declare dso_local i32 @m41t81_write(i32, i32) #1

declare dso_local i32 @m41t81_read(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
