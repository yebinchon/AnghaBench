; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3x/extr_time.c_sun3x_hwclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3x/extr_time.c_sun3x_hwclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtc_time = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.mostek_dt = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@SUN3X_EEPROM = common dso_local global i64 0, align 8
@M_CONTROL = common dso_local global i64 0, align 8
@C_WRITE = common dso_local global i32 0, align 4
@C_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun3x_hwclk(i32 %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtc_time*, align 8
  %5 = alloca %struct.mostek_dt*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.rtc_time* %1, %struct.rtc_time** %4, align 8
  %7 = load i64, i64* @SUN3X_EEPROM, align 8
  %8 = load i64, i64* @M_CONTROL, align 8
  %9 = add nsw i64 %7, %8
  %10 = inttoptr i64 %9 to %struct.mostek_dt*
  store %struct.mostek_dt* %10, %struct.mostek_dt** %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %69

15:                                               ; preds = %2
  %16 = load i32, i32* @C_WRITE, align 4
  %17 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %18 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %17, i32 0, i32 0
  %19 = load volatile i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store volatile i32 %20, i32* %18, align 8
  %21 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %21, i32 0, i32 6
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @bin2bcd(i8* %23)
  %25 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %26 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %25, i32 0, i32 7
  store volatile i8* %24, i8** %26, align 8
  %27 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %28 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %27, i32 0, i32 5
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @bin2bcd(i8* %29)
  %31 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %32 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %31, i32 0, i32 6
  store volatile i8* %30, i8** %32, align 8
  %33 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %34 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  %36 = call i8* @bin2bcd(i8* %35)
  %37 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %38 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %37, i32 0, i32 5
  store volatile i8* %36, i8** %38, align 8
  %39 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %40 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = call i8* @bin2bcd(i8* %41)
  %43 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %44 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %43, i32 0, i32 4
  store volatile i8* %42, i8** %44, align 8
  %45 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %46 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  %48 = call i8* @bin2bcd(i8* %47)
  %49 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %50 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %49, i32 0, i32 3
  store volatile i8* %48, i8** %50, align 8
  %51 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %52 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i8* @bin2bcd(i8* %53)
  %55 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %56 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %55, i32 0, i32 2
  store volatile i8* %54, i8** %56, align 8
  %57 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %58 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i8* @bin2bcd(i8* %59)
  %61 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %62 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %61, i32 0, i32 1
  store volatile i8* %60, i8** %62, align 8
  %63 = load i32, i32* @C_WRITE, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %66 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %65, i32 0, i32 0
  %67 = load volatile i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store volatile i32 %68, i32* %66, align 8
  br label %123

69:                                               ; preds = %2
  %70 = load i32, i32* @C_READ, align 4
  %71 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %72 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %71, i32 0, i32 0
  %73 = load volatile i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store volatile i32 %74, i32* %72, align 8
  %75 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %76 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %75, i32 0, i32 7
  %77 = load volatile i8*, i8** %76, align 8
  %78 = call i8* @bcd2bin(i8* %77)
  %79 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %80 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %79, i32 0, i32 6
  store i8* %78, i8** %80, align 8
  %81 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %82 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %81, i32 0, i32 6
  %83 = load volatile i8*, i8** %82, align 8
  %84 = call i8* @bcd2bin(i8* %83)
  %85 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %86 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %88 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %87, i32 0, i32 5
  %89 = load volatile i8*, i8** %88, align 8
  %90 = call i8* @bcd2bin(i8* %89)
  %91 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %92 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %91, i32 0, i32 4
  store i8* %90, i8** %92, align 8
  %93 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %94 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %93, i32 0, i32 4
  %95 = load volatile i8*, i8** %94, align 8
  %96 = call i8* @bcd2bin(i8* %95)
  %97 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %98 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  %99 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %100 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %99, i32 0, i32 3
  %101 = load volatile i8*, i8** %100, align 8
  %102 = call i8* @bcd2bin(i8* %101)
  %103 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %104 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %103, i32 0, i32 2
  store i8* %102, i8** %104, align 8
  %105 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %106 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %105, i32 0, i32 2
  %107 = load volatile i8*, i8** %106, align 8
  %108 = call i8* @bcd2bin(i8* %107)
  %109 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %110 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %112 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %111, i32 0, i32 1
  %113 = load volatile i8*, i8** %112, align 8
  %114 = call i8* @bcd2bin(i8* %113)
  %115 = load %struct.rtc_time*, %struct.rtc_time** %4, align 8
  %116 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load i32, i32* @C_READ, align 4
  %118 = xor i32 %117, -1
  %119 = load %struct.mostek_dt*, %struct.mostek_dt** %5, align 8
  %120 = getelementptr inbounds %struct.mostek_dt, %struct.mostek_dt* %119, i32 0, i32 0
  %121 = load volatile i32, i32* %120, align 8
  %122 = and i32 %121, %118
  store volatile i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %69, %15
  %124 = load i64, i64* %6, align 8
  %125 = call i32 @local_irq_restore(i64 %124)
  ret i32 0
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i8* @bin2bcd(i8*) #1

declare dso_local i8* @bcd2bin(i8*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
