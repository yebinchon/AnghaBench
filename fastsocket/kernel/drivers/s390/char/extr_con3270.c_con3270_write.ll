; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3270.c_con3270_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3270.c_con3270_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.con3270 = type { %struct.TYPE_4__, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.console = type { i32 }

@condev = common dso_local global %struct.con3270* null, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.console*, i8*, i32)* @con3270_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @con3270_write(%struct.console* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.console*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.con3270*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store %struct.console* %0, %struct.console** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.con3270*, %struct.con3270** @condev, align 8
  store %struct.con3270* %10, %struct.con3270** %7, align 8
  %11 = load %struct.con3270*, %struct.con3270** %7, align 8
  %12 = getelementptr inbounds %struct.con3270, %struct.con3270* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  br label %16

16:                                               ; preds = %59, %3
  %17 = load i32, i32* %6, align 4
  %18 = add i32 %17, -1
  store i32 %18, i32* %6, align 4
  %19 = icmp ugt i32 %17, 0
  br i1 %19, label %20, label %60

20:                                               ; preds = %16
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  store i8 %23, i8* %9, align 1
  %24 = load %struct.con3270*, %struct.con3270** %7, align 8
  %25 = getelementptr inbounds %struct.con3270, %struct.con3270* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.con3270*, %struct.con3270** %7, align 8
  %32 = call i32 @con3270_cline_add(%struct.con3270* %31)
  br label %33

33:                                               ; preds = %30, %20
  %34 = load i8, i8* %9, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 10
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load %struct.con3270*, %struct.con3270** %7, align 8
  %39 = load i8, i8* %9, align 1
  %40 = call i32 @con3270_cline_insert(%struct.con3270* %38, i8 zeroext %39)
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i8, i8* %9, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %56, label %45

45:                                               ; preds = %41
  %46 = load %struct.con3270*, %struct.con3270** %7, align 8
  %47 = getelementptr inbounds %struct.con3270, %struct.con3270* %46, i32 0, i32 3
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.con3270*, %struct.con3270** %7, align 8
  %52 = getelementptr inbounds %struct.con3270, %struct.con3270* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sge i64 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %45, %41
  %57 = load %struct.con3270*, %struct.con3270** %7, align 8
  %58 = call i32 @con3270_cline_end(%struct.con3270* %57)
  br label %59

59:                                               ; preds = %56, %45
  br label %16

60:                                               ; preds = %16
  %61 = load %struct.con3270*, %struct.con3270** %7, align 8
  %62 = getelementptr inbounds %struct.con3270, %struct.con3270* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.con3270*, %struct.con3270** %7, align 8
  %64 = getelementptr inbounds %struct.con3270, %struct.con3270* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %60
  %69 = load %struct.con3270*, %struct.con3270** %7, align 8
  %70 = getelementptr inbounds %struct.con3270, %struct.con3270* %69, i32 0, i32 1
  %71 = call i32 @timer_pending(i32* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.con3270*, %struct.con3270** %7, align 8
  %75 = load i32, i32* @HZ, align 4
  %76 = sdiv i32 %75, 10
  %77 = call i32 @con3270_set_timer(%struct.con3270* %74, i32 %76)
  br label %78

78:                                               ; preds = %73, %68, %60
  %79 = load %struct.con3270*, %struct.con3270** %7, align 8
  %80 = getelementptr inbounds %struct.con3270, %struct.con3270* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %8, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32* %81, i64 %82)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @con3270_cline_add(%struct.con3270*) #1

declare dso_local i32 @con3270_cline_insert(%struct.con3270*, i8 zeroext) #1

declare dso_local i32 @con3270_cline_end(%struct.con3270*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @con3270_set_timer(%struct.con3270*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
