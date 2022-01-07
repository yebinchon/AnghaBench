; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_frame.c_fc_frame_alloc_fill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_frame.c_fc_frame_alloc_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_frame = type { i32 }
%struct.fc_lport = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fc_frame* @fc_frame_alloc_fill(%struct.fc_lport* %0, i64 %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fc_frame*, align 8
  %6 = alloca i64, align 8
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = urem i64 %7, 4
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i64, i64* %6, align 8
  %13 = sub i64 4, %12
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = add i64 %15, %16
  %18 = call %struct.fc_frame* @_fc_frame_alloc(i64 %17)
  store %struct.fc_frame* %18, %struct.fc_frame** %5, align 8
  %19 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %20 = icmp ne %struct.fc_frame* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %23 = call i64 @fr_hdr(%struct.fc_frame* %22)
  %24 = inttoptr i64 %23 to i8*
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @memset(i8* %26, i32 0, i64 %27)
  %29 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  %30 = call i32 @fp_skb(%struct.fc_frame* %29)
  %31 = load i64, i64* %4, align 8
  %32 = add i64 %31, 4
  %33 = call i32 @skb_trim(i32 %30, i64 %32)
  br label %34

34:                                               ; preds = %21, %14
  %35 = load %struct.fc_frame*, %struct.fc_frame** %5, align 8
  ret %struct.fc_frame* %35
}

declare dso_local %struct.fc_frame* @_fc_frame_alloc(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @fr_hdr(%struct.fc_frame*) #1

declare dso_local i32 @skb_trim(i32, i64) #1

declare dso_local i32 @fp_skb(%struct.fc_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
