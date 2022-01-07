; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_tune_vm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/boot/extr_zfcpdump.c_tune_vm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"/proc/sys/vm/dirty_ratio\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"/proc/sys/vm/dirty_background_ratio\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"/proc/sys/vm/dirty_writeback_centisecs\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"/proc/sys/vm/dirty_expire_centisecs\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"/proc/sys/vm/vfs_cache_pressure\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"/proc/sys/vm/lowmem_reserve_ratio\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"50\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"500\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"32\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tune_vm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tune_vm() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [7 x i8*], align 16
  %3 = alloca [7 x i8*], align 16
  %4 = alloca i32, align 4
  %5 = bitcast [7 x i8*]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 56, i1 false)
  %6 = bitcast i8* %5 to [7 x i8*]*
  %7 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8** %7, align 16
  %8 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0), i8** %8, align 8
  %9 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i32 0, i32 2
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i8** %9, align 16
  %10 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i32 0, i32 3
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8** %10, align 8
  %11 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i32 0, i32 4
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8** %11, align 16
  %12 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i32 0, i32 5
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i32 0, i32 0), i8** %12, align 8
  %13 = bitcast [7 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %13, i8 0, i64 56, i1 false)
  %14 = bitcast i8* %13 to [7 x i8*]*
  %15 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8** %15, align 16
  %16 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %16, align 8
  %17 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8** %17, align 16
  %18 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i32 0, i32 3
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8** %18, align 8
  %19 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i32 0, i32 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8** %19, align 16
  %20 = getelementptr inbounds [7 x i8*], [7 x i8*]* %14, i32 0, i32 5
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8** %20, align 8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %39, %0
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [7 x i8*], [7 x i8*]* %2, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [7 x i8*], [7 x i8*]* %3, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @write_to_file(i8* %31, i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  store i32 -1, i32* %1, align 4
  br label %43

39:                                               ; preds = %27
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %21

42:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @write_to_file(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
