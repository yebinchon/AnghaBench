; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_disconnect_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_disconnect_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"disconnect_res\00", align 1
@INC_DIS_PENDING = common dso_local global i64 0, align 8
@SUSPENDING = common dso_local global i64 0, align 8
@IDLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"chs=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*)* @disconnect_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @disconnect_res(i32 %0, i32 %1, i32* %2, %struct.TYPE_10__* %3, %struct.TYPE_11__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_10__* %3, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_11__* %4, %struct.TYPE_11__** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @dbug(i32 1, i32 %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %17 = icmp ne %struct.TYPE_10__* %16, null
  br i1 %17, label %18, label %73

18:                                               ; preds = %6
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = call i32 @clear_c_ind_mask_bit(%struct.TYPE_10__* %19, i32 %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %26 = call i32 @ncci_free_receive_buffers(%struct.TYPE_10__* %25, i32 0)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %28 = call i64 @plci_remove_check(%struct.TYPE_10__* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %74

31:                                               ; preds = %18
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @INC_DIS_PENDING, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SUSPENDING, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %37, %31
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = call i64 @c_ind_mask_empty(%struct.TYPE_10__* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SUSPENDING, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i64, i64* @IDLE, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %47
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = call i32 @dbug(i32 1, i32 %61)
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %57
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %69 = call i32 @plci_remove(%struct.TYPE_10__* %68)
  br label %70

70:                                               ; preds = %67, %57
  br label %71

71:                                               ; preds = %70, %43
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72, %6
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %30
  %75 = load i32, i32* %7, align 4
  ret i32 %75
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @clear_c_ind_mask_bit(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ncci_free_receive_buffers(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @plci_remove_check(%struct.TYPE_10__*) #1

declare dso_local i64 @c_ind_mask_empty(%struct.TYPE_10__*) #1

declare dso_local i32 @plci_remove(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
