; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_register_instance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_register_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_template = type { i32, i32 }
%struct.crypto_instance = type { %struct.crypto_template*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.crypto_larval = type { i32 }

@crypto_alg_sem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_register_instance(%struct.crypto_template* %0, %struct.crypto_instance* %1) #0 {
  %3 = alloca %struct.crypto_template*, align 8
  %4 = alloca %struct.crypto_instance*, align 8
  %5 = alloca %struct.crypto_larval*, align 8
  %6 = alloca i32, align 4
  store %struct.crypto_template* %0, %struct.crypto_template** %3, align 8
  store %struct.crypto_instance* %1, %struct.crypto_instance** %4, align 8
  %7 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %8 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %7, i32 0, i32 2
  %9 = call i32 @crypto_check_alg(%struct.TYPE_3__* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.crypto_template*, %struct.crypto_template** %3, align 8
  %15 = getelementptr inbounds %struct.crypto_template, %struct.crypto_template* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %18 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = call i32 @down_write(i32* @crypto_alg_sem)
  %21 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %22 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %21, i32 0, i32 2
  %23 = call %struct.crypto_larval* @__crypto_register_alg(%struct.TYPE_3__* %22)
  store %struct.crypto_larval* %23, %struct.crypto_larval** %5, align 8
  %24 = load %struct.crypto_larval*, %struct.crypto_larval** %5, align 8
  %25 = call i64 @IS_ERR(%struct.crypto_larval* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %37

28:                                               ; preds = %13
  %29 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %30 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %29, i32 0, i32 1
  %31 = load %struct.crypto_template*, %struct.crypto_template** %3, align 8
  %32 = getelementptr inbounds %struct.crypto_template, %struct.crypto_template* %31, i32 0, i32 0
  %33 = call i32 @hlist_add_head(i32* %30, i32* %32)
  %34 = load %struct.crypto_template*, %struct.crypto_template** %3, align 8
  %35 = load %struct.crypto_instance*, %struct.crypto_instance** %4, align 8
  %36 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %35, i32 0, i32 0
  store %struct.crypto_template* %34, %struct.crypto_template** %36, align 8
  br label %37

37:                                               ; preds = %28, %27
  %38 = call i32 @up_write(i32* @crypto_alg_sem)
  %39 = load %struct.crypto_larval*, %struct.crypto_larval** %5, align 8
  %40 = call i32 @PTR_ERR(%struct.crypto_larval* %39)
  store i32 %40, i32* %6, align 4
  %41 = load %struct.crypto_larval*, %struct.crypto_larval** %5, align 8
  %42 = call i64 @IS_ERR(%struct.crypto_larval* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %48

45:                                               ; preds = %37
  %46 = load %struct.crypto_larval*, %struct.crypto_larval** %5, align 8
  %47 = call i32 @crypto_wait_for_test(%struct.crypto_larval* %46)
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %44, %12
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @crypto_check_alg(%struct.TYPE_3__*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.crypto_larval* @__crypto_register_alg(%struct.TYPE_3__*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_larval*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_larval*) #1

declare dso_local i32 @crypto_wait_for_test(%struct.crypto_larval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
