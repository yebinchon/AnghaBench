; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_identify_activate_IRQ_sender_sn2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_sn2.c_xpc_identify_activate_IRQ_sender_sn2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.amo* }
%struct.amo = type { i32 }

@xpc_vars_sn2 = common dso_local global %struct.TYPE_2__* null, align 8
@XPC_ACTIVATE_IRQ_AMOS_SN2 = common dso_local global i32 0, align 4
@xpc_nasid_mask_nlongs = common dso_local global i32 0, align 4
@xpc_exiting = common dso_local global i64 0, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@xpc_part = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"amo[%d] gave back 0x%lx\0A\00", align 1
@xpc_mach_nasids = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"interrupt from nasid %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpc_identify_activate_IRQ_sender_sn2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amo*, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @xpc_vars_sn2, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.amo*, %struct.amo** %8, align 8
  %10 = load i32, i32* @XPC_ACTIVATE_IRQ_AMOS_SN2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.amo, %struct.amo* %9, i64 %11
  store %struct.amo* %12, %struct.amo** %6, align 8
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %68, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @xpc_nasid_mask_nlongs, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %71

17:                                               ; preds = %13
  %18 = load i64, i64* @xpc_exiting, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %71

21:                                               ; preds = %17
  %22 = load %struct.amo*, %struct.amo** %6, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.amo, %struct.amo* %22, i64 %24
  %26 = call i64 @xpc_receive_IRQ_amo_sn2(%struct.amo* %25)
  store i64 %26, i64* %3, align 8
  %27 = load i32, i32* @BITS_PER_LONG, align 4
  %28 = call i32 @find_first_bit(i64* %3, i32 %27)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @BITS_PER_LONG, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %68

33:                                               ; preds = %21
  %34 = load i32, i32* @xpc_part, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load i64, i64* %3, align 8
  %37 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %35, i64 %36)
  %38 = load i64, i64* %3, align 8
  %39 = load i64*, i64** @xpc_mach_nasids, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %38
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %63, %33
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %1, align 4
  %49 = load i32, i32* @BITS_PER_LONG, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %2, align 4
  %52 = add nsw i32 %50, %51
  %53 = mul nsw i32 %52, 2
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @xpc_part, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %54, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @xpc_identify_activate_IRQ_req_sn2(i32 %57)
  %59 = load i32, i32* @BITS_PER_LONG, align 4
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @find_next_bit(i64* %3, i32 %59, i32 %61)
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %2, align 4
  %65 = load i32, i32* @BITS_PER_LONG, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %45, label %67

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i32, i32* %1, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %1, align 4
  br label %13

71:                                               ; preds = %20, %13
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @xpc_receive_IRQ_amo_sn2(%struct.amo*) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @xpc_identify_activate_IRQ_req_sn2(i32) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
