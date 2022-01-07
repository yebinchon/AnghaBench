; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ablkcipher.c_crypto_givcipher_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_ablkcipher.c_crypto_givcipher_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.crypto_alg = type { i32, i8*, %struct.ablkcipher_alg }
%struct.ablkcipher_alg = type { i8*, i8*, i8*, i64 }

@.str = private unnamed_addr constant [26 x i8] c"type         : givcipher\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"async        : %s\0A\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"blocksize    : %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"min keysize  : %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"max keysize  : %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ivsize       : %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"geniv        : %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"<built-in>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.crypto_alg*)* @crypto_givcipher_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_givcipher_show(%struct.seq_file* %0, %struct.crypto_alg* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.ablkcipher_alg*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.crypto_alg* %1, %struct.crypto_alg** %4, align 8
  %6 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %7 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %6, i32 0, i32 2
  store %struct.ablkcipher_alg* %7, %struct.ablkcipher_alg** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %12 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %19 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  %20 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %21 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %22 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* %23)
  %25 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %26 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %5, align 8
  %27 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %28)
  %30 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %31 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %5, align 8
  %32 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8* %33)
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %5, align 8
  %37 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i8* %38)
  %40 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %41 = load %struct.ablkcipher_alg*, %struct.ablkcipher_alg** %5, align 8
  %42 = getelementptr inbounds %struct.ablkcipher_alg, %struct.ablkcipher_alg* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = inttoptr i64 %43 to i8*
  br label %48

47:                                               ; preds = %2
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i8* [ %46, %45 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), %47 ]
  %50 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* %49)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
