; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_tty.c_sclp_eval_selfdeftextmsg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_tty.c_sclp_eval_selfdeftextmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gds_subvector = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gds_subvector*)* @sclp_eval_selfdeftextmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_eval_selfdeftextmsg(%struct.gds_subvector* %0) #0 {
  %2 = alloca %struct.gds_subvector*, align 8
  %3 = alloca i8*, align 8
  store %struct.gds_subvector* %0, %struct.gds_subvector** %2, align 8
  %4 = load %struct.gds_subvector*, %struct.gds_subvector** %2, align 8
  %5 = bitcast %struct.gds_subvector* %4 to i8*
  %6 = load %struct.gds_subvector*, %struct.gds_subvector** %2, align 8
  %7 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr i8, i8* %5, i64 %9
  store i8* %10, i8** %3, align 8
  %11 = load %struct.gds_subvector*, %struct.gds_subvector** %2, align 8
  %12 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %11, i64 1
  store %struct.gds_subvector* %12, %struct.gds_subvector** %2, align 8
  br label %13

13:                                               ; preds = %27, %1
  %14 = load %struct.gds_subvector*, %struct.gds_subvector** %2, align 8
  %15 = bitcast %struct.gds_subvector* %14 to i8*
  %16 = load i8*, i8** %3, align 8
  %17 = icmp ult i8* %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %13
  %19 = load %struct.gds_subvector*, %struct.gds_subvector** %2, align 8
  %20 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 48
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.gds_subvector*, %struct.gds_subvector** %2, align 8
  %25 = call i32 @sclp_get_input(%struct.gds_subvector* %24)
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.gds_subvector*, %struct.gds_subvector** %2, align 8
  %29 = bitcast %struct.gds_subvector* %28 to i8*
  %30 = load %struct.gds_subvector*, %struct.gds_subvector** %2, align 8
  %31 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %29, i64 %33
  %35 = bitcast i8* %34 to %struct.gds_subvector*
  store %struct.gds_subvector* %35, %struct.gds_subvector** %2, align 8
  br label %13

36:                                               ; preds = %13
  ret void
}

declare dso_local i32 @sclp_get_input(%struct.gds_subvector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
