; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_ib_umad_sm_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_ib_umad_sm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ib_umad_port* }
%struct.ib_umad_port = type { %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ib_port_modify = type { i32 }

@IB_PORT_SM = common dso_local global i32 0, align 4
@ib_umad_release_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ib_umad_sm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ib_umad_sm_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ib_umad_port*, align 8
  %6 = alloca %struct.ib_port_modify, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.ib_umad_port*, %struct.ib_umad_port** %9, align 8
  store %struct.ib_umad_port* %10, %struct.ib_umad_port** %5, align 8
  %11 = getelementptr inbounds %struct.ib_port_modify, %struct.ib_port_modify* %6, i32 0, i32 0
  %12 = load i32, i32* @IB_PORT_SM, align 4
  store i32 %12, i32* %11, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.ib_umad_port*, %struct.ib_umad_port** %5, align 8
  %14 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ib_umad_port*, %struct.ib_umad_port** %5, align 8
  %17 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.ib_umad_port*, %struct.ib_umad_port** %5, align 8
  %22 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ib_umad_port*, %struct.ib_umad_port** %5, align 8
  %25 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ib_modify_port(i64 %23, i32 %26, i32 0, %struct.ib_port_modify* %6)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %20, %2
  %29 = load %struct.ib_umad_port*, %struct.ib_umad_port** %5, align 8
  %30 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.ib_umad_port*, %struct.ib_umad_port** %5, align 8
  %33 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %32, i32 0, i32 1
  %34 = call i32 @up(i32* %33)
  %35 = load %struct.ib_umad_port*, %struct.ib_umad_port** %5, align 8
  %36 = getelementptr inbounds %struct.ib_umad_port, %struct.ib_umad_port* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* @ib_umad_release_dev, align 4
  %40 = call i32 @kref_put(i32* %38, i32 %39)
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ib_modify_port(i64, i32, i32, %struct.ib_port_modify*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
