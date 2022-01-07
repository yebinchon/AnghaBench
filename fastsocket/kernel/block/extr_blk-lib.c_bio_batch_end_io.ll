; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-lib.c_bio_batch_end_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-lib.c_bio_batch_end_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.bio_batch* }
%struct.bio_batch = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@BIO_UPTODATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*, i32)* @bio_batch_end_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bio_batch_end_io(%struct.bio* %0, i32 %1) #0 {
  %3 = alloca %struct.bio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bio_batch*, align 8
  store %struct.bio* %0, %struct.bio** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 0
  %8 = load %struct.bio_batch*, %struct.bio_batch** %7, align 8
  store %struct.bio_batch* %8, %struct.bio_batch** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  %15 = icmp ne i32 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i32, i32* @BIO_UPTODATE, align 4
  %18 = load %struct.bio_batch*, %struct.bio_batch** %5, align 8
  %19 = getelementptr inbounds %struct.bio_batch, %struct.bio_batch* %18, i32 0, i32 2
  %20 = call i32 @clear_bit(i32 %17, i32* %19)
  br label %21

21:                                               ; preds = %16, %11, %2
  %22 = load %struct.bio_batch*, %struct.bio_batch** %5, align 8
  %23 = getelementptr inbounds %struct.bio_batch, %struct.bio_batch* %22, i32 0, i32 1
  %24 = call i64 @atomic_dec_and_test(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.bio_batch*, %struct.bio_batch** %5, align 8
  %28 = getelementptr inbounds %struct.bio_batch, %struct.bio_batch* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @complete(i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.bio*, %struct.bio** %3, align 8
  %33 = call i32 @bio_put(%struct.bio* %32)
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @complete(i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
