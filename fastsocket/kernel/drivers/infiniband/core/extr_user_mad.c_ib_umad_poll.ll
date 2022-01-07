; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_ib_umad_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_ib_umad_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.ib_umad_file* }
%struct.ib_umad_file = type { i32, i32 }
%struct.poll_table_struct = type { i32 }

@POLLOUT = common dso_local global i32 0, align 4
@POLLWRNORM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @ib_umad_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_umad_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.ib_umad_file*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load %struct.ib_umad_file*, %struct.ib_umad_file** %8, align 8
  store %struct.ib_umad_file* %9, %struct.ib_umad_file** %5, align 8
  %10 = load i32, i32* @POLLOUT, align 4
  %11 = load i32, i32* @POLLWRNORM, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = load %struct.ib_umad_file*, %struct.ib_umad_file** %5, align 8
  %15 = getelementptr inbounds %struct.ib_umad_file, %struct.ib_umad_file* %14, i32 0, i32 1
  %16 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %17 = call i32 @poll_wait(%struct.file* %13, i32* %15, %struct.poll_table_struct* %16)
  %18 = load %struct.ib_umad_file*, %struct.ib_umad_file** %5, align 8
  %19 = getelementptr inbounds %struct.ib_umad_file, %struct.ib_umad_file* %18, i32 0, i32 0
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @POLLIN, align 4
  %24 = load i32, i32* @POLLRDNORM, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
