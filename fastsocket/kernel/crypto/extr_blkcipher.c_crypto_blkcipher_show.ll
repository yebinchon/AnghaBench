; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_crypto_blkcipher_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_blkcipher.c_crypto_blkcipher_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.crypto_alg = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [26 x i8] c"type         : blkcipher\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"blocksize    : %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"min keysize  : %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"max keysize  : %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ivsize       : %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"geniv        : %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"<default>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.crypto_alg*)* @crypto_blkcipher_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_blkcipher_show(%struct.seq_file* %0, %struct.crypto_alg* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %4, align 8
  %5 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %6 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %9 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %10)
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %14 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  %18 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %19 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %20 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  %24 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %25 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %26 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %32 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = inttoptr i64 %34 to i8*
  br label %39

38:                                               ; preds = %2
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i8* [ %37, %36 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %38 ]
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
