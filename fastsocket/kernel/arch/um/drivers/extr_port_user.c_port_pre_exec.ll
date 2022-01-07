; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_port_user.c_port_pre_exec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_port_user.c_port_pre_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_pre_exec_data = type { i32, i32 }

@SHUT_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @port_pre_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_pre_exec(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.port_pre_exec_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.port_pre_exec_data*
  store %struct.port_pre_exec_data* %5, %struct.port_pre_exec_data** %3, align 8
  %6 = load %struct.port_pre_exec_data*, %struct.port_pre_exec_data** %3, align 8
  %7 = getelementptr inbounds %struct.port_pre_exec_data, %struct.port_pre_exec_data* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dup2(i32 %8, i32 0)
  %10 = load %struct.port_pre_exec_data*, %struct.port_pre_exec_data** %3, align 8
  %11 = getelementptr inbounds %struct.port_pre_exec_data, %struct.port_pre_exec_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dup2(i32 %12, i32 1)
  %14 = load %struct.port_pre_exec_data*, %struct.port_pre_exec_data** %3, align 8
  %15 = getelementptr inbounds %struct.port_pre_exec_data, %struct.port_pre_exec_data* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dup2(i32 %16, i32 2)
  %18 = load %struct.port_pre_exec_data*, %struct.port_pre_exec_data** %3, align 8
  %19 = getelementptr inbounds %struct.port_pre_exec_data, %struct.port_pre_exec_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @close(i32 %20)
  %22 = load %struct.port_pre_exec_data*, %struct.port_pre_exec_data** %3, align 8
  %23 = getelementptr inbounds %struct.port_pre_exec_data, %struct.port_pre_exec_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dup2(i32 %24, i32 3)
  %26 = load i32, i32* @SHUT_RD, align 4
  %27 = call i32 @shutdown(i32 3, i32 %26)
  %28 = load %struct.port_pre_exec_data*, %struct.port_pre_exec_data** %3, align 8
  %29 = getelementptr inbounds %struct.port_pre_exec_data, %struct.port_pre_exec_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @close(i32 %30)
  ret void
}

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @shutdown(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
