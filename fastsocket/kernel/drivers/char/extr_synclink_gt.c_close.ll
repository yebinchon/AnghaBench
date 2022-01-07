; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_4__*, i32, %struct.slgt_info* }
%struct.TYPE_4__ = type { i32 }
%struct.slgt_info = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s close entry, count=%d\0A\00", align 1
@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s close exit, count=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.slgt_info*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 2
  %8 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  store %struct.slgt_info* %8, %struct.slgt_info** %5, align 8
  %9 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @sanity_check(%struct.slgt_info* %9, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %75

16:                                               ; preds = %2
  %17 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %18 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @DBGINFO(i8* %25)
  %27 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %28 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %27, i32 0, i32 0
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = call i64 @tty_port_close_start(%struct.TYPE_5__* %28, %struct.tty_struct* %29, %struct.file* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %62

34:                                               ; preds = %16
  %35 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %44 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %45 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @wait_until_sent(%struct.tty_struct* %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %34
  %49 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %50 = call i32 @flush_buffer(%struct.tty_struct* %49)
  %51 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %52 = call i32 @tty_ldisc_flush(%struct.tty_struct* %51)
  %53 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %54 = call i32 @shutdown(%struct.slgt_info* %53)
  %55 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %56 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %55, i32 0, i32 0
  %57 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %58 = call i32 @tty_port_close_end(%struct.TYPE_5__* %56, %struct.tty_struct* %57)
  %59 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %60 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %48, %33
  %63 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %64 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %69 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = call i32 @DBGINFO(i8* %73)
  br label %75

75:                                               ; preds = %62, %15
  ret void
}

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i64 @tty_port_close_start(%struct.TYPE_5__*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @wait_until_sent(%struct.tty_struct*, i32) #1

declare dso_local i32 @flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @shutdown(%struct.slgt_info*) #1

declare dso_local i32 @tty_port_close_end(%struct.TYPE_5__*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
