; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_umid.c_remove_umid_dir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_umid.c_remove_umid_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@uml_dir = common dso_local global i8* null, align 8
@UMID_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@umid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"remove_umid_dir - remove_files_and_dir failed with err = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @remove_umid_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_umid_dir() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = load i8*, i8** @uml_dir, align 8
  %5 = call i64 @strlen(i8* %4)
  %6 = load i64, i64* @UMID_LEN, align 8
  %7 = add nsw i64 %5, %6
  %8 = add nsw i64 %7, 1
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %1, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %2, align 8
  %11 = load i8*, i8** @uml_dir, align 8
  %12 = load i32, i32* @umid, align 4
  %13 = call i32 @sprintf(i8* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %11, i32 %12)
  %14 = call signext i8 @remove_files_and_dir(i8* %10)
  store i8 %14, i8* %3, align 1
  %15 = load i8, i8* %3, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %0
  %18 = load i8, i8* %3, align 1
  %19 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8 signext %18)
  br label %20

20:                                               ; preds = %17, %0
  %21 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %21)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local signext i8 @remove_files_and_dir(i8*) #1

declare dso_local i32 @printf(i8*, i8 signext) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
