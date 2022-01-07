; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_tty.c_sclp_eval_textcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_tty.c_sclp_eval_textcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gds_vector = type { i32 }
%struct.gds_subvector = type { i32, i64 }

@GDS_KEY_SELFDEFTEXTMSG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gds_vector*)* @sclp_eval_textcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_eval_textcmd(%struct.gds_vector* %0) #0 {
  %2 = alloca %struct.gds_vector*, align 8
  %3 = alloca %struct.gds_subvector*, align 8
  %4 = alloca i8*, align 8
  store %struct.gds_vector* %0, %struct.gds_vector** %2, align 8
  %5 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %6 = bitcast %struct.gds_vector* %5 to i8*
  %7 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %8 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr i8, i8* %6, i64 %10
  store i8* %11, i8** %4, align 8
  %12 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %13 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %12, i64 1
  %14 = bitcast %struct.gds_vector* %13 to %struct.gds_subvector*
  store %struct.gds_subvector* %14, %struct.gds_subvector** %3, align 8
  br label %15

15:                                               ; preds = %30, %1
  %16 = load %struct.gds_subvector*, %struct.gds_subvector** %3, align 8
  %17 = bitcast %struct.gds_subvector* %16 to i8*
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ult i8* %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %15
  %21 = load %struct.gds_subvector*, %struct.gds_subvector** %3, align 8
  %22 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GDS_KEY_SELFDEFTEXTMSG, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.gds_subvector*, %struct.gds_subvector** %3, align 8
  %28 = call i32 @sclp_eval_selfdeftextmsg(%struct.gds_subvector* %27)
  br label %29

29:                                               ; preds = %26, %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.gds_subvector*, %struct.gds_subvector** %3, align 8
  %32 = bitcast %struct.gds_subvector* %31 to i8*
  %33 = load %struct.gds_subvector*, %struct.gds_subvector** %3, align 8
  %34 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %32, i64 %36
  %38 = bitcast i8* %37 to %struct.gds_subvector*
  store %struct.gds_subvector* %38, %struct.gds_subvector** %3, align 8
  br label %15

39:                                               ; preds = %15
  ret void
}

declare dso_local i32 @sclp_eval_selfdeftextmsg(%struct.gds_subvector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
