; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_run_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_vsc7326.c_run_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.init_table = type { i64, i32 }

@INITBLOCK_SLEEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"sleep %d us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.init_table*, i32)* @run_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_table(i32* %0, %struct.init_table* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.init_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.init_table* %1, %struct.init_table** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %52, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %55

12:                                               ; preds = %8
  %13 = load %struct.init_table*, %struct.init_table** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.init_table, %struct.init_table* %13, i64 %15
  %17 = getelementptr inbounds %struct.init_table, %struct.init_table* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INITBLOCK_SLEEP, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %12
  %22 = load %struct.init_table*, %struct.init_table** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.init_table, %struct.init_table* %22, i64 %24
  %26 = getelementptr inbounds %struct.init_table, %struct.init_table* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @udelay(i32 %27)
  %29 = load %struct.init_table*, %struct.init_table** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.init_table, %struct.init_table* %29, i64 %31
  %33 = getelementptr inbounds %struct.init_table, %struct.init_table* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @CH_ERR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %51

36:                                               ; preds = %12
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.init_table*, %struct.init_table** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.init_table, %struct.init_table* %38, i64 %40
  %42 = getelementptr inbounds %struct.init_table, %struct.init_table* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.init_table*, %struct.init_table** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.init_table, %struct.init_table* %44, i64 %46
  %48 = getelementptr inbounds %struct.init_table, %struct.init_table* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @vsc_write(i32* %37, i64 %43, i32 %49)
  br label %51

51:                                               ; preds = %36, %21
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %8

55:                                               ; preds = %8
  ret void
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @CH_ERR(i8*, i32) #1

declare dso_local i32 @vsc_write(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
