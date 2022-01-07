; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_process_thin_deferred_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_process_thin_deferred_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thin_c = type { i32, %struct.bio_list, i64, %struct.pool* }
%struct.bio_list = type { i32 }
%struct.pool = type { i32 (%struct.thin_c*, %struct.bio*)*, i32 (%struct.thin_c*, %struct.bio.0*)* }
%struct.bio = type opaque
%struct.bio.0 = type opaque
%struct.bio.1 = type { i32 }

@BIO_DISCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thin_c*)* @process_thin_deferred_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_thin_deferred_bios(%struct.thin_c* %0) #0 {
  %2 = alloca %struct.thin_c*, align 8
  %3 = alloca %struct.pool*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bio.1*, align 8
  %6 = alloca %struct.bio_list, align 4
  store %struct.thin_c* %0, %struct.thin_c** %2, align 8
  %7 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %8 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %7, i32 0, i32 3
  %9 = load %struct.pool*, %struct.pool** %8, align 8
  store %struct.pool* %9, %struct.pool** %3, align 8
  %10 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %11 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %16 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %17 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %16, i32 0, i32 1
  %18 = call i32 @requeue_bio_list(%struct.thin_c* %15, %struct.bio_list* %17)
  br label %94

19:                                               ; preds = %1
  %20 = call i32 @bio_list_init(%struct.bio_list* %6)
  %21 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %22 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %26 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %25, i32 0, i32 1
  %27 = call i64 @bio_list_empty(%struct.bio_list* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %31 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %30, i32 0, i32 0
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  br label %94

34:                                               ; preds = %19
  %35 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %36 = call i32 @__sort_thin_deferred_bios(%struct.thin_c* %35)
  %37 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %38 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %37, i32 0, i32 1
  %39 = call i32 @bio_list_merge(%struct.bio_list* %6, %struct.bio_list* %38)
  %40 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %41 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %40, i32 0, i32 1
  %42 = call i32 @bio_list_init(%struct.bio_list* %41)
  %43 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %44 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %43, i32 0, i32 0
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  br label %47

47:                                               ; preds = %93, %34
  %48 = call %struct.bio.1* @bio_list_pop(%struct.bio_list* %6)
  store %struct.bio.1* %48, %struct.bio.1** %5, align 8
  %49 = icmp ne %struct.bio.1* %48, null
  br i1 %49, label %50, label %94

50:                                               ; preds = %47
  %51 = load %struct.pool*, %struct.pool** %3, align 8
  %52 = call i64 @ensure_next_mapping(%struct.pool* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %56 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %55, i32 0, i32 0
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %60 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %59, i32 0, i32 1
  %61 = load %struct.bio.1*, %struct.bio.1** %5, align 8
  %62 = call i32 @bio_list_add(%struct.bio_list* %60, %struct.bio.1* %61)
  %63 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %64 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %63, i32 0, i32 1
  %65 = call i32 @bio_list_merge(%struct.bio_list* %64, %struct.bio_list* %6)
  %66 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %67 = getelementptr inbounds %struct.thin_c, %struct.thin_c* %66, i32 0, i32 0
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  br label %94

70:                                               ; preds = %50
  %71 = load %struct.bio.1*, %struct.bio.1** %5, align 8
  %72 = getelementptr inbounds %struct.bio.1, %struct.bio.1* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BIO_DISCARD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.pool*, %struct.pool** %3, align 8
  %79 = getelementptr inbounds %struct.pool, %struct.pool* %78, i32 0, i32 1
  %80 = load i32 (%struct.thin_c*, %struct.bio.0*)*, i32 (%struct.thin_c*, %struct.bio.0*)** %79, align 8
  %81 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %82 = load %struct.bio.1*, %struct.bio.1** %5, align 8
  %83 = bitcast %struct.bio.1* %82 to %struct.bio.0*
  %84 = call i32 %80(%struct.thin_c* %81, %struct.bio.0* %83)
  br label %93

85:                                               ; preds = %70
  %86 = load %struct.pool*, %struct.pool** %3, align 8
  %87 = getelementptr inbounds %struct.pool, %struct.pool* %86, i32 0, i32 0
  %88 = load i32 (%struct.thin_c*, %struct.bio*)*, i32 (%struct.thin_c*, %struct.bio*)** %87, align 8
  %89 = load %struct.thin_c*, %struct.thin_c** %2, align 8
  %90 = load %struct.bio.1*, %struct.bio.1** %5, align 8
  %91 = bitcast %struct.bio.1* %90 to %struct.bio*
  %92 = call i32 %88(%struct.thin_c* %89, %struct.bio* %91)
  br label %93

93:                                               ; preds = %85, %77
  br label %47

94:                                               ; preds = %14, %29, %54, %47
  ret void
}

declare dso_local i32 @requeue_bio_list(%struct.thin_c*, %struct.bio_list*) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bio_list_empty(%struct.bio_list*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__sort_thin_deferred_bios(%struct.thin_c*) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local %struct.bio.1* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i64 @ensure_next_mapping(%struct.pool*) #1

declare dso_local i32 @bio_list_add(%struct.bio_list*, %struct.bio.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
