; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_daemon_user.c_daemon_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_daemon_user.c_daemon_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.daemon_data = type { i32, i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @daemon_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @daemon_remove(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.daemon_data*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.daemon_data*
  store %struct.daemon_data* %5, %struct.daemon_data** %3, align 8
  %6 = load %struct.daemon_data*, %struct.daemon_data** %3, align 8
  %7 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @close(i32 %8)
  %10 = load %struct.daemon_data*, %struct.daemon_data** %3, align 8
  %11 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %10, i32 0, i32 0
  store i32 -1, i32* %11, align 8
  %12 = load %struct.daemon_data*, %struct.daemon_data** %3, align 8
  %13 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @close(i32 %14)
  %16 = load %struct.daemon_data*, %struct.daemon_data** %3, align 8
  %17 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %16, i32 0, i32 1
  store i32 -1, i32* %17, align 4
  %18 = load %struct.daemon_data*, %struct.daemon_data** %3, align 8
  %19 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kfree(i32* %20)
  %22 = load %struct.daemon_data*, %struct.daemon_data** %3, align 8
  %23 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = load %struct.daemon_data*, %struct.daemon_data** %3, align 8
  %25 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load %struct.daemon_data*, %struct.daemon_data** %3, align 8
  %29 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = load %struct.daemon_data*, %struct.daemon_data** %3, align 8
  %31 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load %struct.daemon_data*, %struct.daemon_data** %3, align 8
  %35 = getelementptr inbounds %struct.daemon_data, %struct.daemon_data* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
