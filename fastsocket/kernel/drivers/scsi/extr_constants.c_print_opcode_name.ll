; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_constants.c_print_opcode_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_constants.c_print_opcode_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [45 x i8] c"short opcode=0x%x command, len=%d ext_len=%d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"cdb[0]=0x%x, sa=0x%x\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c", in_cdb_len=%d, ext_len=%d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"cdb[0]=0x%x\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"cdb[0]=0x%x (vendor)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @print_opcode_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_opcode_name(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %54 [
    i32 128, label %13
    i32 134, label %45
    i32 133, label %45
    i32 132, label %45
    i32 130, label %45
    i32 131, label %45
    i32 129, label %45
  ]

13:                                               ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = call i32 @scsi_varlen_cdb_length(i8* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 10
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  br label %64

23:                                               ; preds = %13
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl i32 %27, 8
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 9
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = add nsw i32 %28, %32
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %23
  br label %64

45:                                               ; preds = %2, %2, %2, %2, %2, %2
  %46 = load i8*, i8** %3, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %49, 31
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  br label %64

54:                                               ; preds = %2
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 192
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  br label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %45, %44, %18
  ret void
}

declare dso_local i32 @scsi_varlen_cdb_length(i8*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
