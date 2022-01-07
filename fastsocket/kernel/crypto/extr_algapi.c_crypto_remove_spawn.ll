; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_remove_spawn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_algapi.c_crypto_remove_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_spawn = type { %struct.crypto_instance* }
%struct.crypto_instance = type { %struct.TYPE_3__, i32, %struct.crypto_template* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.crypto_template = type { i32 }
%struct.list_head = type { i32 }

@CRYPTO_ALG_DEAD = common dso_local global i32 0, align 4
@CRYPTO_MSG_ALG_UNREGISTER = common dso_local global i32 0, align 4
@crypto_destroy_instance = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_spawn*, %struct.list_head*)* @crypto_remove_spawn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_remove_spawn(%struct.crypto_spawn* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.crypto_spawn*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.crypto_instance*, align 8
  %6 = alloca %struct.crypto_template*, align 8
  store %struct.crypto_spawn* %0, %struct.crypto_spawn** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.crypto_spawn*, %struct.crypto_spawn** %3, align 8
  %8 = getelementptr inbounds %struct.crypto_spawn, %struct.crypto_spawn* %7, i32 0, i32 0
  %9 = load %struct.crypto_instance*, %struct.crypto_instance** %8, align 8
  store %struct.crypto_instance* %9, %struct.crypto_instance** %5, align 8
  %10 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %11 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %10, i32 0, i32 2
  %12 = load %struct.crypto_template*, %struct.crypto_template** %11, align 8
  store %struct.crypto_template* %12, %struct.crypto_template** %6, align 8
  %13 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %14 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %13, i32 0, i32 0
  %15 = call i64 @crypto_is_dead(%struct.TYPE_3__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %63

18:                                               ; preds = %2
  %19 = load i32, i32* @CRYPTO_ALG_DEAD, align 4
  %20 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %21 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %26 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %25, i32 0, i32 1
  %27 = call i64 @hlist_unhashed(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %18
  br label %63

30:                                               ; preds = %18
  %31 = load %struct.crypto_template*, %struct.crypto_template** %6, align 8
  %32 = icmp ne %struct.crypto_template* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.crypto_template*, %struct.crypto_template** %6, align 8
  %35 = call i32 @crypto_tmpl_get(%struct.crypto_template* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33, %30
  br label %63

38:                                               ; preds = %33
  %39 = load i32, i32* @CRYPTO_MSG_ALG_UNREGISTER, align 4
  %40 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %41 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %40, i32 0, i32 0
  %42 = call i32 @crypto_notify(i32 %39, %struct.TYPE_3__* %41)
  %43 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %44 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load %struct.list_head*, %struct.list_head** %4, align 8
  %47 = call i32 @list_move(i32* %45, %struct.list_head* %46)
  %48 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %49 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %48, i32 0, i32 1
  %50 = call i32 @hlist_del(i32* %49)
  %51 = load i32, i32* @crypto_destroy_instance, align 4
  %52 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %53 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.crypto_instance*, %struct.crypto_instance** %5, align 8
  %56 = getelementptr inbounds %struct.crypto_instance, %struct.crypto_instance* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @list_empty(i32* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @BUG_ON(i32 %61)
  br label %63

63:                                               ; preds = %38, %37, %29, %17
  ret void
}

declare dso_local i64 @crypto_is_dead(%struct.TYPE_3__*) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @crypto_tmpl_get(%struct.crypto_template*) #1

declare dso_local i32 @crypto_notify(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @list_move(i32*, %struct.list_head*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
