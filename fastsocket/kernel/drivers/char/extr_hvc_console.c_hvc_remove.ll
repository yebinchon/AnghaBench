; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_console.c_hvc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hvc_console.c_hvc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvc_struct = type { i64, i32, i32, i32 }
%struct.tty_struct = type { i32 }

@MAX_NR_HVC_CONSOLES = common dso_local global i64 0, align 8
@vtermnos = common dso_local global i32* null, align 8
@destroy_hvc_struct = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hvc_remove(%struct.hvc_struct* %0) #0 {
  %2 = alloca %struct.hvc_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.hvc_struct* %0, %struct.hvc_struct** %2, align 8
  %5 = load %struct.hvc_struct*, %struct.hvc_struct** %2, align 8
  %6 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %5, i32 0, i32 2
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.hvc_struct*, %struct.hvc_struct** %2, align 8
  %10 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.tty_struct* @tty_kref_get(i32 %11)
  store %struct.tty_struct* %12, %struct.tty_struct** %4, align 8
  %13 = load %struct.hvc_struct*, %struct.hvc_struct** %2, align 8
  %14 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MAX_NR_HVC_CONSOLES, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load i32*, i32** @vtermnos, align 8
  %20 = load %struct.hvc_struct*, %struct.hvc_struct** %2, align 8
  %21 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 -1, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.hvc_struct*, %struct.hvc_struct** %2, align 8
  %26 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %25, i32 0, i32 2
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.hvc_struct*, %struct.hvc_struct** %2, align 8
  %30 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %29, i32 0, i32 1
  %31 = load i32, i32* @destroy_hvc_struct, align 4
  %32 = call i32 @kref_put(i32* %30, i32 %31)
  %33 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %34 = icmp ne %struct.tty_struct* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  %36 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %37 = call i32 @tty_vhangup(%struct.tty_struct* %36)
  %38 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %39 = call i32 @tty_kref_put(%struct.tty_struct* %38)
  br label %40

40:                                               ; preds = %35, %24
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.tty_struct* @tty_kref_get(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @tty_vhangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
