; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_cmp_break_pp_connection.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-avc.c_cmp_break_pp_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32 }

@CMP_OUTPUT_PLUG_CONTROL_REG_0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"CMP: no connection to break\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmp_break_pp_connection(%struct.firedtv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.firedtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [2 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.firedtv* %0, %struct.firedtv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @CMP_OUTPUT_PLUG_CONTROL_REG_0, align 8
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 2
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %19 = call i64 @cmp_read(%struct.firedtv* %16, i64 %17, i64* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %75

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %73, %22
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %25 = load i64, i64* %24, align 16
  %26 = call i32 @get_opcr_online(i64 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %30 = load i64, i64* %29, align 16
  %31 = call i64 @get_opcr_p2p_connections(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %35 = load i64, i64* %34, align 16
  %36 = call i32 @get_opcr_channel(i64 %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33, %28, %23
  %40 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %41 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %75

44:                                               ; preds = %33
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %46 = load i64, i64* %45, align 16
  store i64 %46, i64* %7, align 8
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %48 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %49 = load i64, i64* %48, align 16
  %50 = call i64 @get_opcr_p2p_connections(i64 %49)
  %51 = sub nsw i64 %50, 1
  %52 = call i32 @set_opcr_p2p_connections(i64* %47, i64 %51)
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %54 = load i64, i64* %53, align 16
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  store i64 %56, i64* %57, align 16
  %58 = load %struct.firedtv*, %struct.firedtv** %4, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %61 = call i64 @cmp_lock(%struct.firedtv* %58, i64 %59, i64* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  br label %75

64:                                               ; preds = %44
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %67 = load i64, i64* %66, align 16
  %68 = icmp ne i64 %65, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = icmp slt i32 %71, 6
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %23

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %21, %39, %63, %74, %64
  ret void
}

declare dso_local i64 @cmp_read(%struct.firedtv*, i64, i64*) #1

declare dso_local i32 @get_opcr_online(i64) #1

declare dso_local i64 @get_opcr_p2p_connections(i64) #1

declare dso_local i32 @get_opcr_channel(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @set_opcr_p2p_connections(i64*, i64) #1

declare dso_local i64 @cmp_lock(%struct.firedtv*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
