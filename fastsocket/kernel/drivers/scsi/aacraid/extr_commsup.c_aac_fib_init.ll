; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_commsup.c_aac_fib_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aacraid/extr_commsup.c_aac_fib_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32, %struct.TYPE_5__*, %struct.hw_fib* }
%struct.TYPE_5__ = type { i32 }
%struct.hw_fib = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, %struct.TYPE_4__, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i8* }

@FIB_MAGIC = common dso_local global i32 0, align 4
@HostOwned = common dso_local global i32 0, align 4
@FibInitialized = common dso_local global i32 0, align 4
@FibEmpty = common dso_local global i32 0, align 4
@FastResponseCapable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_fib_init(%struct.fib* %0) #0 {
  %2 = alloca %struct.fib*, align 8
  %3 = alloca %struct.hw_fib*, align 8
  store %struct.fib* %0, %struct.fib** %2, align 8
  %4 = load %struct.fib*, %struct.fib** %2, align 8
  %5 = getelementptr inbounds %struct.fib, %struct.fib* %4, i32 0, i32 2
  %6 = load %struct.hw_fib*, %struct.hw_fib** %5, align 8
  store %struct.hw_fib* %6, %struct.hw_fib** %3, align 8
  %7 = load %struct.hw_fib*, %struct.hw_fib** %3, align 8
  %8 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %7, i32 0, i32 0
  %9 = call i32 @memset(%struct.TYPE_6__* %8, i32 0, i32 4)
  %10 = load i32, i32* @FIB_MAGIC, align 4
  %11 = load %struct.hw_fib*, %struct.hw_fib** %3, align 8
  %12 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 8
  %14 = load %struct.fib*, %struct.fib** %2, align 8
  %15 = getelementptr inbounds %struct.fib, %struct.fib* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.hw_fib*, %struct.hw_fib** %3, align 8
  %21 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @HostOwned, align 4
  %24 = load i32, i32* @FibInitialized, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @FibEmpty, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @FastResponseCapable, align 4
  %29 = or i32 %27, %28
  %30 = call i8* @cpu_to_le32(i32 %29)
  %31 = load %struct.hw_fib*, %struct.hw_fib** %3, align 8
  %32 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load %struct.fib*, %struct.fib** %2, align 8
  %35 = getelementptr inbounds %struct.fib, %struct.fib* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @cpu_to_le32(i32 %36)
  %38 = load %struct.hw_fib*, %struct.hw_fib** %3, align 8
  %39 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i8* %37, i8** %41, align 8
  %42 = load %struct.fib*, %struct.fib** %2, align 8
  %43 = getelementptr inbounds %struct.fib, %struct.fib* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @cpu_to_le16(i32 %46)
  %48 = load %struct.hw_fib*, %struct.hw_fib** %3, align 8
  %49 = getelementptr inbounds %struct.hw_fib, %struct.hw_fib* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i8* %47, i8** %50, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
