; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_async.c_ppp_asynctty_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ppp_async.c_ppp_asynctty_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.asyncppp*, %struct.TYPE_3__* }
%struct.asyncppp = type { i32*, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, %struct.tty_struct* }
%struct.TYPE_4__ = type { i32, i8*, i32*, %struct.asyncppp* }
%struct.TYPE_3__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PPP_MRU = common dso_local global i8* null, align 8
@ppp_async_process = common dso_local global i32 0, align 4
@async_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @ppp_asynctty_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppp_asynctty_open(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.asyncppp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %7 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %108

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.asyncppp* @kzalloc(i32 104, i32 %19)
  store %struct.asyncppp* %20, %struct.asyncppp** %4, align 8
  %21 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %22 = icmp ne %struct.asyncppp* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %106

24:                                               ; preds = %16
  %25 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %26 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %27 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %26, i32 0, i32 14
  store %struct.tty_struct* %25, %struct.tty_struct** %27, align 8
  %28 = load i8*, i8** @PPP_MRU, align 8
  %29 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %30 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %29, i32 0, i32 13
  store i8* %28, i8** %30, align 8
  %31 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %32 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %31, i32 0, i32 12
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %35 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %34, i32 0, i32 11
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %38 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 -1, i32* %40, align 4
  %41 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %42 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 1610612736, i32* %44, align 4
  %45 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %46 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 8
  %47 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %48 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %51 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %50, i32 0, i32 10
  store i32 %49, i32* %51, align 8
  %52 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %53 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %56 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %55, i32 0, i32 9
  store i32 %54, i32* %56, align 4
  %57 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %58 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %57, i32 0, i32 2
  store i32 -1, i32* %58, align 4
  %59 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %60 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %59, i32 0, i32 7
  %61 = call i32 @skb_queue_head_init(i32* %60)
  %62 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %63 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %62, i32 0, i32 6
  %64 = load i32, i32* @ppp_async_process, align 4
  %65 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %66 = ptrtoint %struct.asyncppp* %65 to i64
  %67 = call i32 @tasklet_init(i32* %63, i32 %64, i64 %66)
  %68 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %69 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %68, i32 0, i32 5
  %70 = call i32 @atomic_set(i32* %69, i32 1)
  %71 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %72 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %71, i32 0, i32 4
  %73 = call i32 @init_MUTEX_LOCKED(i32* %72)
  %74 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %75 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %76 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  store %struct.asyncppp* %74, %struct.asyncppp** %77, align 8
  %78 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %79 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32* @async_ops, i32** %80, align 8
  %81 = load i8*, i8** @PPP_MRU, align 8
  %82 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %83 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i8* %81, i8** %84, align 8
  %85 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %86 = call i32 @tty_get_baud_rate(%struct.tty_struct* %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %89 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %92 = getelementptr inbounds %struct.asyncppp, %struct.asyncppp* %91, i32 0, i32 3
  %93 = call i32 @ppp_register_channel(%struct.TYPE_4__* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %24
  br label %103

97:                                               ; preds = %24
  %98 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %99 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %100 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %99, i32 0, i32 1
  store %struct.asyncppp* %98, %struct.asyncppp** %100, align 8
  %101 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %102 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %101, i32 0, i32 0
  store i32 65536, i32* %102, align 8
  store i32 0, i32* %2, align 4
  br label %108

103:                                              ; preds = %96
  %104 = load %struct.asyncppp*, %struct.asyncppp** %4, align 8
  %105 = call i32 @kfree(%struct.asyncppp* %104)
  br label %106

106:                                              ; preds = %103, %23
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %97, %13
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.asyncppp* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_MUTEX_LOCKED(i32*) #1

declare dso_local i32 @tty_get_baud_rate(%struct.tty_struct*) #1

declare dso_local i32 @ppp_register_channel(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(%struct.asyncppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
