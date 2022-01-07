; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_board_deinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_board_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxa_board_conf = type { i32, %struct.TYPE_4__*, i32*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.tty_struct = type { i32 }

@moxa_openlock = common dso_local global i32 0, align 4
@moxa_lock = common dso_local global i32 0, align 4
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moxa_board_conf*)* @moxa_board_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxa_board_deinit(%struct.moxa_board_conf* %0) #0 {
  %2 = alloca %struct.moxa_board_conf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  store %struct.moxa_board_conf* %0, %struct.moxa_board_conf** %2, align 8
  %6 = call i32 @mutex_lock(i32* @moxa_openlock)
  %7 = call i32 @spin_lock_bh(i32* @moxa_lock)
  %8 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %9 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = call i32 @spin_unlock_bh(i32* @moxa_lock)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %48, %1
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %14 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %11
  %18 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %19 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %17
  %31 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %32 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_3__* %37)
  store %struct.tty_struct* %38, %struct.tty_struct** %5, align 8
  %39 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %40 = icmp ne %struct.tty_struct* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %43 = call i32 @tty_hangup(%struct.tty_struct* %42)
  %44 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %45 = call i32 @tty_kref_put(%struct.tty_struct* %44)
  br label %46

46:                                               ; preds = %41, %30
  br label %47

47:                                               ; preds = %46, %17
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %3, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %11

51:                                               ; preds = %11
  br label %52

52:                                               ; preds = %51, %84
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %76, %52
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %56 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %61 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %59
  %73 = load i32, i32* %4, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %72, %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %3, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %53

79:                                               ; preds = %53
  %80 = call i32 @mutex_unlock(i32* @moxa_openlock)
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %87

84:                                               ; preds = %79
  %85 = call i32 @msleep(i32 50)
  %86 = call i32 @mutex_lock(i32* @moxa_openlock)
  br label %52

87:                                               ; preds = %83
  %88 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %89 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @iounmap(i32* %90)
  %92 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %93 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %92, i32 0, i32 2
  store i32* null, i32** %93, align 8
  %94 = load %struct.moxa_board_conf*, %struct.moxa_board_conf** %2, align 8
  %95 = getelementptr inbounds %struct.moxa_board_conf, %struct.moxa_board_conf* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = call i32 @kfree(%struct.TYPE_4__* %96)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.TYPE_3__*) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
