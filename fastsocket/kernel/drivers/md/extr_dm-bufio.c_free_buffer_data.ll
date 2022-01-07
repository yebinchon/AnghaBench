; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_free_buffer_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-bufio.c_free_buffer_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"dm_bufio_free_buffer_data: bad data mode: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_bufio_client*, i8*, i32)* @free_buffer_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffer_data(%struct.dm_bufio_client* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dm_bufio_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %23 [
    i32 129, label %8
    i32 130, label %13
    i32 128, label %20
  ]

8:                                                ; preds = %3
  %9 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %10 = call i32 @DM_BUFIO_CACHE(%struct.dm_bufio_client* %9)
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @kmem_cache_free(i32 %10, i8* %11)
  br label %27

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %17 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @free_pages(i64 %15, i32 %18)
  br label %27

20:                                               ; preds = %3
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @vfree(i8* %21)
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @DMCRIT(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 (...) @BUG()
  br label %27

27:                                               ; preds = %23, %20, %13, %8
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, i8*) #1

declare dso_local i32 @DM_BUFIO_CACHE(%struct.dm_bufio_client*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @DMCRIT(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
