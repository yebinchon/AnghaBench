; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_halt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32, i32)* @tg3_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_halt(%struct.tg3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.tg3*, %struct.tg3** %5, align 8
  %10 = call i32 @tg3_stop_fw(%struct.tg3* %9)
  %11 = load %struct.tg3*, %struct.tg3** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @tg3_write_sig_pre_reset(%struct.tg3* %11, i32 %12)
  %14 = load %struct.tg3*, %struct.tg3** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @tg3_abort_hw(%struct.tg3* %14, i32 %15)
  %17 = load %struct.tg3*, %struct.tg3** %5, align 8
  %18 = call i32 @tg3_chip_reset(%struct.tg3* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.tg3*, %struct.tg3** %5, align 8
  %20 = call i32 @__tg3_set_mac_addr(%struct.tg3* %19, i32 0)
  %21 = load %struct.tg3*, %struct.tg3** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @tg3_write_sig_legacy(%struct.tg3* %21, i32 %22)
  %24 = load %struct.tg3*, %struct.tg3** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @tg3_write_sig_post_reset(%struct.tg3* %24, i32 %25)
  %27 = load %struct.tg3*, %struct.tg3** %5, align 8
  %28 = getelementptr inbounds %struct.tg3, %struct.tg3* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %3
  %32 = load %struct.tg3*, %struct.tg3** %5, align 8
  %33 = call i32 @tg3_get_nstats(%struct.tg3* %32)
  %34 = load %struct.tg3*, %struct.tg3** %5, align 8
  %35 = load %struct.tg3*, %struct.tg3** %5, align 8
  %36 = getelementptr inbounds %struct.tg3, %struct.tg3* %35, i32 0, i32 1
  %37 = call i32 @tg3_get_estats(%struct.tg3* %34, i32* %36)
  %38 = load %struct.tg3*, %struct.tg3** %5, align 8
  %39 = getelementptr inbounds %struct.tg3, %struct.tg3* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @memset(i64 %40, i32 0, i32 4)
  br label %42

42:                                               ; preds = %31, %3
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %48

47:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %45
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @tg3_stop_fw(%struct.tg3*) #1

declare dso_local i32 @tg3_write_sig_pre_reset(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_abort_hw(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_chip_reset(%struct.tg3*) #1

declare dso_local i32 @__tg3_set_mac_addr(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_write_sig_legacy(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_write_sig_post_reset(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_get_nstats(%struct.tg3*) #1

declare dso_local i32 @tg3_get_estats(%struct.tg3*, i32*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
