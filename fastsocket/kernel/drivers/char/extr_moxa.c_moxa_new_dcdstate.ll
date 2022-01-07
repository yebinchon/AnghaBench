; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_new_dcdstate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_moxa.c_moxa_new_dcdstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxa_port = type { i32, i32 }
%struct.tty_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moxa_port*, i32)* @moxa_new_dcdstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxa_new_dcdstate(%struct.moxa_port* %0, i32 %1) #0 {
  %3 = alloca %struct.moxa_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  store %struct.moxa_port* %0, %struct.moxa_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %13 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %18 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %17, i32 0, i32 1
  %19 = call %struct.tty_struct* @tty_port_tty_get(i32* %18)
  store %struct.tty_struct* %19, %struct.tty_struct** %5, align 8
  %20 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %21 = icmp ne %struct.tty_struct* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %24 = call i64 @C_CLOCAL(%struct.tty_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %31 = call i32 @tty_hangup(%struct.tty_struct* %30)
  br label %32

32:                                               ; preds = %29, %26, %22, %16
  %33 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %34 = call i32 @tty_kref_put(%struct.tty_struct* %33)
  br label %35

35:                                               ; preds = %32, %2
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.moxa_port*, %struct.moxa_port** %3, align 8
  %38 = getelementptr inbounds %struct.moxa_port, %struct.moxa_port* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i64 @C_CLOCAL(%struct.tty_struct*) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
