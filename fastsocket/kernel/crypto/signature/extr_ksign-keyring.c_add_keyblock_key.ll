; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign-keyring.c_add_keyblock_key.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/signature/extr_ksign-keyring.c_add_keyblock_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksign_public_key = type { i64, i64, i32, i32, i32* }

@.str = private unnamed_addr constant [25 x i8] c"- Added public key %X%X\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"  - public key has expired\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"  - key was been created %lu seconds in future\0A\00", align 1
@keyring_sem = common dso_local global i32 0, align 4
@keyring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksign_public_key*, i8*)* @add_keyblock_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_keyblock_key(%struct.ksign_public_key* %0, i8* %1) #0 {
  %3 = alloca %struct.ksign_public_key*, align 8
  %4 = alloca i8*, align 8
  store %struct.ksign_public_key* %0, %struct.ksign_public_key** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.ksign_public_key*, %struct.ksign_public_key** %3, align 8
  %6 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ksign_public_key*, %struct.ksign_public_key** %3, align 8
  %11 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14)
  %16 = load %struct.ksign_public_key*, %struct.ksign_public_key** %3, align 8
  %17 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.ksign_public_key*, %struct.ksign_public_key** %3, align 8
  %22 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 (...) @get_seconds()
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %20, %2
  %29 = load %struct.ksign_public_key*, %struct.ksign_public_key** %3, align 8
  %30 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i64 (...) @get_seconds()
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.ksign_public_key*, %struct.ksign_public_key** %3, align 8
  %36 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i64 (...) @get_seconds()
  %39 = sub nsw i64 %37, %38
  %40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.ksign_public_key*, %struct.ksign_public_key** %3, align 8
  %43 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %42, i32 0, i32 3
  %44 = call i32 @atomic_inc(i32* %43)
  %45 = call i32 @down_write(i32* @keyring_sem)
  %46 = load %struct.ksign_public_key*, %struct.ksign_public_key** %3, align 8
  %47 = getelementptr inbounds %struct.ksign_public_key, %struct.ksign_public_key* %46, i32 0, i32 2
  %48 = call i32 @list_add_tail(i32* %47, i32* @keyring)
  %49 = call i32 @up_write(i32* @keyring_sem)
  ret i32 0
}

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @get_seconds(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
