; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_cleanup_ports.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_istallion.c_stli_cleanup_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlibrd = type { %struct.stliport** }
%struct.stliport = type { i32 }
%struct.tty_struct = type { i32 }

@STL_MAXPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlibrd*)* @stli_cleanup_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stli_cleanup_ports(%struct.stlibrd* %0) #0 {
  %2 = alloca %struct.stlibrd*, align 8
  %3 = alloca %struct.stliport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tty_struct*, align 8
  store %struct.stlibrd* %0, %struct.stlibrd** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %35, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @STL_MAXPORTS, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = load %struct.stlibrd*, %struct.stlibrd** %2, align 8
  %12 = getelementptr inbounds %struct.stlibrd, %struct.stlibrd* %11, i32 0, i32 0
  %13 = load %struct.stliport**, %struct.stliport*** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.stliport*, %struct.stliport** %13, i64 %15
  %17 = load %struct.stliport*, %struct.stliport** %16, align 8
  store %struct.stliport* %17, %struct.stliport** %3, align 8
  %18 = load %struct.stliport*, %struct.stliport** %3, align 8
  %19 = icmp ne %struct.stliport* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %10
  %21 = load %struct.stliport*, %struct.stliport** %3, align 8
  %22 = getelementptr inbounds %struct.stliport, %struct.stliport* %21, i32 0, i32 0
  %23 = call %struct.tty_struct* @tty_port_tty_get(i32* %22)
  store %struct.tty_struct* %23, %struct.tty_struct** %5, align 8
  %24 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %25 = icmp ne %struct.tty_struct* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %28 = call i32 @tty_hangup(%struct.tty_struct* %27)
  %29 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %30 = call i32 @tty_kref_put(%struct.tty_struct* %29)
  br label %31

31:                                               ; preds = %26, %20
  %32 = load %struct.stliport*, %struct.stliport** %3, align 8
  %33 = call i32 @kfree(%struct.stliport* %32)
  br label %34

34:                                               ; preds = %31, %10
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %6

38:                                               ; preds = %6
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @tty_hangup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @kfree(%struct.stliport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
