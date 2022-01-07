; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___link_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c___link_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, i32, i32, i32, i32, %struct.dm_bufio_client* }
%struct.dm_bufio_client = type { i32*, i32*, i32* }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*, i32, i32)* @__link_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__link_buffer(%struct.dm_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_bufio_client*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %9 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %8, i32 0, i32 5
  %10 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %9, align 8
  store %struct.dm_bufio_client* %10, %struct.dm_bufio_client** %7, align 8
  %11 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %7, align 8
  %12 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %26 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %25, i32 0, i32 3
  %27 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %7, align 8
  %28 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = call i32 @list_add(i32* %26, i32* %32)
  %34 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %35 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %34, i32 0, i32 2
  %36 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %7, align 8
  %37 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i64 @DM_BUFIO_HASH(i32 %39)
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @hlist_add_head(i32* %35, i32* %41)
  %43 = load i32, i32* @jiffies, align 4
  %44 = load %struct.dm_buffer*, %struct.dm_buffer** %4, align 8
  %45 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  ret void
}

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i64 @DM_BUFIO_HASH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
