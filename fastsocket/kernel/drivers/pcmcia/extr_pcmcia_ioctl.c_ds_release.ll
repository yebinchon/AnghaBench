; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_ioctl.c_ds_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_ioctl.c_ds_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_6__*, %struct.pcmcia_socket* }
%struct.pcmcia_socket = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [23 x i8] c"ds_release(socket %d)\0A\00", align 1
@O_ACCMODE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ds_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.pcmcia_socket*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call i32 @iminor(%struct.inode* %8)
  %10 = call i32 @ds_dbg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %13, %struct.TYPE_6__** %6, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = call i64 @CHECK_USER(%struct.TYPE_6__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %68

18:                                               ; preds = %2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %20, align 8
  store %struct.pcmcia_socket* %21, %struct.pcmcia_socket** %5, align 8
  %22 = load %struct.file*, %struct.file** %4, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @O_ACCMODE, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %31 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %29, %18
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = getelementptr inbounds %struct.file, %struct.file* %34, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %35, align 8
  %36 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %37 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %36, i32 0, i32 0
  store %struct.TYPE_6__** %37, %struct.TYPE_6__*** %7, align 8
  br label %38

38:                                               ; preds = %49, %33
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %46 = icmp eq %struct.TYPE_6__* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %53

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store %struct.TYPE_6__** %52, %struct.TYPE_6__*** %7, align 8
  br label %38

53:                                               ; preds = %47, %38
  %54 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %55 = icmp eq %struct.TYPE_6__** %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %68

57:                                               ; preds = %53
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %61, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = call i32 @kfree(%struct.TYPE_6__* %64)
  %66 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %5, align 8
  %67 = call i32 @pcmcia_put_socket(%struct.pcmcia_socket* %66)
  br label %68

68:                                               ; preds = %57, %56, %17
  ret i32 0
}

declare dso_local i32 @ds_dbg(i32, i8*, i32) #1

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i64 @CHECK_USER(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

declare dso_local i32 @pcmcia_put_socket(%struct.pcmcia_socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
