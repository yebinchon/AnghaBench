; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_cyclades.c_cyz_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_cyclades.c_cyz_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cyclades_card = type { i32, i32, %struct.cyclades_port* }
%struct.cyclades_port = type { i32, i32 }
%struct.tty_struct = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@NR_CARDS = common dso_local global i32 0, align 4
@cy_card = common dso_local global %struct.cyclades_card* null, align 8
@cyz_polling_cycle = common dso_local global i64 0, align 8
@cyz_timerlist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @cyz_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cyz_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.cyclades_card*, align 8
  %4 = alloca %struct.cyclades_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tty_struct*, align 8
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @HZ, align 8
  %11 = add i64 %9, %10
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %78, %1
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @NR_CARDS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %81

16:                                               ; preds = %12
  %17 = load %struct.cyclades_card*, %struct.cyclades_card** @cy_card, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %17, i64 %19
  store %struct.cyclades_card* %20, %struct.cyclades_card** %3, align 8
  %21 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %22 = call i32 @cy_is_Z(%struct.cyclades_card* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %78

25:                                               ; preds = %16
  %26 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %27 = call i32 @cyz_is_loaded(%struct.cyclades_card* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %78

30:                                               ; preds = %25
  %31 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %32 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %37 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  br label %78

38:                                               ; preds = %30
  %39 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %40 = call i32 @cyz_handle_cmd(%struct.cyclades_card* %39)
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %71, %38
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %44 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %41
  %48 = load %struct.cyclades_card*, %struct.cyclades_card** %3, align 8
  %49 = getelementptr inbounds %struct.cyclades_card, %struct.cyclades_card* %48, i32 0, i32 2
  %50 = load %struct.cyclades_port*, %struct.cyclades_port** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %50, i64 %52
  store %struct.cyclades_port* %53, %struct.cyclades_port** %4, align 8
  %54 = load %struct.cyclades_port*, %struct.cyclades_port** %4, align 8
  %55 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %54, i32 0, i32 1
  %56 = call %struct.tty_struct* @tty_port_tty_get(i32* %55)
  store %struct.tty_struct* %56, %struct.tty_struct** %8, align 8
  %57 = load %struct.cyclades_port*, %struct.cyclades_port** %4, align 8
  %58 = getelementptr inbounds %struct.cyclades_port, %struct.cyclades_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %47
  %62 = load %struct.cyclades_port*, %struct.cyclades_port** %4, align 8
  %63 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %64 = call i32 @cyz_handle_rx(%struct.cyclades_port* %62, %struct.tty_struct* %63)
  br label %65

65:                                               ; preds = %61, %47
  %66 = load %struct.cyclades_port*, %struct.cyclades_port** %4, align 8
  %67 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %68 = call i32 @cyz_handle_tx(%struct.cyclades_port* %66, %struct.tty_struct* %67)
  %69 = load %struct.tty_struct*, %struct.tty_struct** %8, align 8
  %70 = call i32 @tty_kref_put(%struct.tty_struct* %69)
  br label %71

71:                                               ; preds = %65
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %41

74:                                               ; preds = %41
  %75 = load i64, i64* @jiffies, align 8
  %76 = load i64, i64* @cyz_polling_cycle, align 8
  %77 = add i64 %75, %76
  store i64 %77, i64* %5, align 8
  br label %78

78:                                               ; preds = %74, %35, %29, %24
  %79 = load i32, i32* %7, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %12

81:                                               ; preds = %12
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @mod_timer(i32* @cyz_timerlist, i64 %82)
  ret void
}

declare dso_local i32 @cy_is_Z(%struct.cyclades_card*) #1

declare dso_local i32 @cyz_is_loaded(%struct.cyclades_card*) #1

declare dso_local i32 @cyz_handle_cmd(%struct.cyclades_card*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @cyz_handle_rx(%struct.cyclades_port*, %struct.tty_struct*) #1

declare dso_local i32 @cyz_handle_tx(%struct.cyclades_port*, %struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
